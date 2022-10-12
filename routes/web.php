<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/
Route::get('/', 'Index@index')->name('home');
Route::get('management', 'Index@management')->name('management');
Route::get('photos', 'Index@photos')->name('photos');
Route::get('videos', 'Index@videos')->name('videos');

Route::get('messages', 'Index@messages')->name('messages');
Route::get('messages/{id}', 'Index@messages_details')->name('messages.details');

Route::get('members', 'Index@employee')->name('members');
Route::get('memberdetails/{id}', 'Index@employee_details')->name('member.details');

Route::get('director', 'Index@director')->name('director');
Route::get('director/{id}', 'Index@director_details')->name('director.details');

Route::get('notice', 'Index@notice')->name('notice');
Route::get('notice/{id}', 'Index@notice_details')->name('notice.details');

Route::get('event', 'Index@event')->name('event');
Route::get('event/{slug}', 'Index@event_details')->name('event.details');

Route::get('content/{slug}', 'Index@contents')->name('maincontent');
Route::get('content1/{slug}/{sslug}', 'Index@contents')->name('subcontent');
Route::get('content2/{slug}/{sslug}/{ssslug}', 'Index@contents')->name('subsubcontent');

Route::get('news', 'Index@news')->name('news');
Route::get('news/{slug}', 'Index@news_details')->name('news.details');

Route::any('userapprove', 'CommonController@permissions')->name('user.approve');
Route::any('usersapprove', 'CommonController@permissionsUser')->name('users.approve');
Route::get('slugupdate', 'CommonController@updateSlug');
Route::any('masterdelete', 'CommonController@deletedata')->name('masterdelete');

Route::post('bookNow', 'Index@bookNow')->name('bookNow');

/////////////////////////////// Admin Routing Areas ////////////////////////////////////////
Route::get('administration', 'Auth\LoginController@showLoginForm')->name('administration');
Route::post('adminlogin', 'Auth\LoginController@login')->name('adminlogin');

//Auth::routes();
Route::group(['prefix' => 'administration',  'middleware' => 'auth:administration'], function () {
    Route::post('/logout', ['uses' => 'Auth\LoginController@logout'])->name('administration.logout');
    Route::get('/dashboard', ['as' => 'dashboard', 'uses' => 'AdminController@dashboard'])->name('dashboard');
    Route::post('/', ['as' => 'dashboard', 'uses' => 'AdminController@dashboard']);

    Route::post('/password/email', ['as' => 'password.email', 'uses' => 'Auth\ForgotPasswordController@sendResetLinkEmail']);
    Route::get('/password/reset', ['as' => 'password.request', 'uses' => 'Auth\ForgotPasswordController@showLinkRequestForm']);
    Route::post('/password/reset', ['as' => '', 'uses' => 'Auth\ResetPasswordController@reset']);
    Route::get('/password/reset/{token}', ['as' => 'password.reset', 'uses' => 'Auth\ResetPasswordController@showResetForm']);

    // Registration Routes...
    Route::get('register', ['as' => 'register', 'uses' => 'Auth\RegisterController@showRegistrationForm']);
    Route::post('register', ['as' => '', 'uses' => 'Auth\RegisterController@register']);

    Route::any('masterdelete', 'CommonController@deletedata');
    Route::any('permissions', 'CommonController@permissions')->name('permissions');
    Route::any('permissionsuser', 'CommonController@permissionsUser')->name('permissionsuser');

    Route::get('cardsearch', 'IdcardController@getAjaxUserData')->name('admin.cardsearch');

    Route::resource('admins', 'AdminController');
    Route::resource('menus', 'MenusController');
    Route::resource('contents', 'ContentController');
    Route::resource('banner', 'BannerController');
    Route::resource('logo', 'LogoController');

    Route::resource('membertype', 'MembertypeController');
    Route::resource('member', 'MemberController');

    Route::resource('noticetype', 'NoticetypeController');
    Route::resource('notice', 'NoticeController');

    Route::resource('eventtype', 'EventtypeController');
    Route::resource('event', 'EventController');

    Route::resource('message', 'MessageController');
    Route::resource('photogalery', 'PhotoGalleryController');
    Route::resource('gallery', 'GalleryController');
    Route::resource('video', 'VideoController');
    Route::resource('news', 'NewsController');
    Route::resource('fixbanner', 'FixbannerController');
    Route::resource('sponsor', 'SponsorController');
    Route::get('/ajaxmenu', 'MenusController@searchmenu')->name('menu.ajaxmenu');

    Route::get('/samplefiledownload', 'CommonController@sampleFileDownload')->name('samplefiledownload');
    Route::post('/import', 'CommonController@import')->name('import');
    Route::get('/export', 'CommonController@export')->name('export');

    
	Route::resource('companyprofile','CompanyProfileController');
    Route::resource('fastivalregistration', 'FastivalRegistrationController');
    Route::get('/fastivalregistration/samplefiledownload', 'CommonController@sampleFileDownload')->name('fastivalregistration.samplefiledownload');
    Route::get('fastivalregistration/printinfo/{id}', 'FastivalRegistrationController@printdata')->name('fastivalregistration.printinfo');

    //Route::get('sethome/{id}', 'MenusController@setHome')->name('menu.sethome');
    Route::get('sethome/{id}', 'ContentController@setHome')->name('content.sethome');
    Route::get('sethomeposition', 'MembertypeController@setHomePosition')->name('membertype.sethomeposition');

    Route::get('idcard', 'IdcardController@index')->name('idcard');
    Route::get('idcard/print/{count}', 'IdcardController@cardprint')->name('idcard.print');
});
