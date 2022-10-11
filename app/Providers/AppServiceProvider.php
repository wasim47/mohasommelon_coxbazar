<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Menu;
use App\Models\Content;
use App\Models\CompanyProfile;
use App\Models\UpdateInformation;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*', function($view){		
			$companyprofile = CompanyProfile::orderBy('id','DESC')->first();
			$menus = Menu::where('parent_id',NULL)->get();	
			$contactus = Content::where('menu_id',1)->first();	
			$latestupdate = UpdateInformation::where('status',1)->get();	
			
			return $view->with(['companyprofile'=>$companyprofile,'menus'=>$menus,'contactus'=>$contactus,'latestupdate'=>$latestupdate]);
		});
    }
}
