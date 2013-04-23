class MyprofileController < ApplicationController
  def myprofile
  	#@myprofile = Profile.joins(:users).find_by_user_id(session[:user_id]).select("profiles.*, users.*")
  	#@myprofile = Profile.find_by_sql('SELECT  "profiles".* FROM "profiles" INNER JOIN "users" ON "users"."id" = "profiles"."user_id" WHERE "profiles"."user_id" = 1 LIMIT 1')
  	@myprofile = Profile.new

  end

  def savemyprofile
  	@myprofile = Profile.new(params[:image])
    if @myprofile.save
      flash[:notice] = "Successfully created profile."
      redirect_to home_path
    else
      render :action => 'myprofile'
    end
  end
end
