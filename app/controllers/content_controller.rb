class ContentController < ApplicationController
  def login
    render :layout => 'header'
    session[:user_name] = nil
    session[:user_id] = nil
  end

  def header
  end

  def signup
    render :layout => 'header'
  end

  def home

  end

  def changepassword
  end

  def forgotpassword
    render :layout => 'header'
  end

  def register
    @user = Users.new
    @fname = params[:firstname]
    @lname = params[:lastname]
    @uname = params[:username]
    @email = params[:email]
    @pass = params[:password]
    if !@uname.blank?
      @user.firstname = @fname
      @user.lastname  = @lname
      @user.username = @uname
      @user.email = @email
      @user.password = @pass
      #@user = Users.create :firstname => @fname, :lastname => @lname, :username => @uname, :password => @pass, :email => @email
      if @user.save
        redirect_to login_path, notice: 'User was successfully created.'
      end
      else
        redirect_to :back
    end
  end

  
  def signin
    @fname = params[:firstname]
    @lname = params[:lastname]
    @uname = params[:User_Name]
    @pass = params[:Password]
  	@users = Users.where(:username => @uname, :password => @pass)
    if !@users.blank?
        session[:user_name] = @users.first.firstname + ' ' + @users.first.lastname
        session[:user_id] = @users.first.id
        redirect_to home_path
    else 
      redirect_to login_path
    end
  end
  
end
