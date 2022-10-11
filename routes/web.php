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
Route::get('/', 'Index@index')-> name('home');
Route::get('management', 'Index@management')->name('management');
Route::get('service/{id}', 'Index@service_details')->name('service');
Route::get('circular', 'Index@circular')->name('circular');
Route::get('photos', 'Index@photos')->name('photos');
Route::get('videos', 'Index@videos')->name('videos');

Route::get('product', 'Index@product')->name('product');
Route::get('product/{slug}', 'Index@product_details')->name('product.details');

Route::get('activities', 'Index@activities')->name('activities');
Route::get('activities/{slug}', 'Index@activities_details')->name('activities.details');


Route::get('director', 'Index@director')->name('director');
Route::get('director/{id}', 'Index@director_details')->name('director.details');

Route::get('ourteam', 'Index@ourteam')->name('ourteam');
Route::get('ourteam/{id}', 'Index@ourteam_details')->name('ourteam.details');

//Route::get('employee', 'Index@employee')->name('employee');

//Route::get('content', 'Index@index')->name('home');
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
Route::group(['prefix' => 'administration',  'middleware' => 'auth:administration'], function()
{
	Route::post('/logout', ['uses' => 'Auth\LoginController@logout'])->name('administration.logout');
	Route::get('/dashboard', ['as' => 'dashboard', 'uses' => 'AdminController@dashboard'])->name('dashboard');
	Route::post('/', ['as' => 'dashboard', 'uses' => 'AdminController@dashboard']);

	Route::post('/password/email', ['as' => 'password.email', 'uses' => 'Auth\ForgotPasswordController@sendResetLinkEmail']);
	Route::get('/password/reset', ['as' => 'password.request', 'uses' => 'Auth\ForgotPasswordController@showLinkRequestForm']);
	Route::post('/password/reset', ['as' => '', 'uses' => 'Auth\ResetPasswordController@reset']);
	Route::get('/password/reset/{token}', ['as' => 'password.reset','uses' => 'Auth\ResetPasswordController@showResetForm']);

	// Registration Routes...
	Route::get('register', ['as' => 'register', 'uses' => 'Auth\RegisterController@showRegistrationForm']);
	Route::post('register', ['as' => '', 'uses' => 'Auth\RegisterController@register']);

	Route::any('masterdelete', 'CommonController@deletedata');
	Route::any('permissions', 'CommonController@permissions')->name('permissions');
	Route::any('permissionsuser', 'CommonController@permissionsUser')->name('permissionsuser');

	// Route::get('/article/ajaxsearch','ArticleController@searchajax')->name('article.ajaxsearch');

	Route::resource('admins','AdminController');
	Route::resource('menus','MenusController');
	Route::resource('contents','ContentController');
	Route::resource('banner','BannerController');
	Route::resource('advertisement','AdvertisementController');
	Route::resource('notice','NoticeController');
	Route::resource('service','ServiceController');
	Route::resource('car','CarController');
	Route::resource('management','ManagementController');
	Route::resource('partner','PartnerController');
	Route::resource('client','ClientController');
	Route::resource('photogalery','PhotoGalleryController');
	Route::resource('gallery','GalleryController');
	Route::resource('video','VideoController');
	Route::resource('companyprofile','CompanyProfileController');
	Route::resource('career','CareerController');
	Route::resource('updateinformation','UpdateinformationController');
	Route::resource('cartype','CartypeController');
	Route::resource('vehicle_feedback','VehicleFeedbackController');
	Route::resource('booking','BookingController');

    Route::get('booking', 'BookingController@index')->name('booking.index');
	//Route::resource('applicant','ApplicantController');

	Route::get('/ajaxmenu','MenusController@searchmenu')->name('menu.ajaxmenu');

});
