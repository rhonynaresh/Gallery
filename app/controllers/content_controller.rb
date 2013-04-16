class ContentController < ApplicationController
  def login
    
  end

  def header
  end

  def signup
    @fname = params[:firstname]
    @lname = params[:lastname]
    @uname = params[:username]
    @email = params[:email]
    @pass = params[:password]
    if !@uname.blank?
      @user = Users.create :firstname => @fname, :lastname => @lname, :username => @uname, :password => @password, :email => @email
      redirect_to login_path, notice: 'User was successfully created.'
    end 
    #respond_to do |format|
    
    #if !@user.blank? 
      #redirect_to login_path, notice: 'User was successfully created.'
    #else
      #redirect_to signup_path, notice: 'Error on creating User.'
    #end 
    #end
    #redirect_to(login_path)
  end

  def home
    @fname = params[:firstname]
    @lname = params[:lastname]
    @uname = params[:User_Name]
    @pass = params[:Password]
    @user = Users.where(:username => @uname, :password => @pass)
    if !@user.blank?
        session[:user_name] = @uname
        #redirect_to home_path
        #render "home"
    else 
      redirect_to login_path
      #render "login"
    end
  end

  def changepassword
  end

  def register
  	@fname = params[:First_Name]
  	@lname = params[:Last_Name]
  	@uname = params[:User_Name]
  	@email = params[:Email]
  	@pass = params[:Password]
  	@user = Users.create :firstname => @fname, :lastname => @lname, :username => @uname, :password => @password, :email => @email
    #respond_to do |format|
    
    #if !@user.blank? 
      #redirect_to login_path, notice: 'User was successfully created.'
    #else
      #redirect_to signup_path, notice: 'Error on creating User.'
    #end 
    #end
  	#redirect_to(login_path)
  end

  
  def signin
    @fname = params[:firstname]
    @lname = params[:lastname]
    @uname = params[:User_Name]
    @pass = params[:Password]
  	@user = Users.where(:username => @uname, :password => @pass)
    if @user.blank?
        session[:user_name] = @uname
        session[:user_id] = @user.id
        #redirect_to home_path
        render "login"
    else 
      #redirect_to login_path
      render "home"
    end
  end
  
end
