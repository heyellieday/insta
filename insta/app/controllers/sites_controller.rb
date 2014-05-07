class SitesController < ApplicationController
    def show
    end
    
    def index
        @user = User.find(params[:user_id])
    end
    def create
        @user = User.find(params[:user_id])
        @site = @user.sites.new
        @site.admin_user = @user.name
        @site.admin_email = @user.email   
        @site.admin_password = site_params[:admin_password]
        @site.wp_siteurl = site_params[:wp_siteurl]
        @site.save
        redirect_to site_path(@user)
    end
    
    def site_params
        params.require(:site).permit(:site_title, :admin_user, :admin_email, :admin_password, :wp_siteurl, :id)
    end
  
end