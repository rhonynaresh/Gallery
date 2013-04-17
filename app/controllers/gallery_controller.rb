class GalleryController < ApplicationController
  def images
    @image = Image.new :gallery_id => params[:gallery_id]
    #@image = Image.new
    @images = Gallery.find(params[:gallery_id]).images
  end

  def gallery
    @gallery = Gallery.find(:all)
  end

  def add_gallery
    @gname = params[:name]
    if !@gname.blank?
      @gdesc = params[:description]
      @user_id = session[:user_id]
      @gallery = Gallery.create :name => @gname, :description => @gdesc, :user_id => @user_id
      if !@gallery.blank?
          flash[:notice] = "Successfully created gallery."
          redirect_to '/content/gallery'
          #render :back
      end
    end
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      #Gallery.find(params[:gallery_id]).images << @image 
      flash[:notice] = "Successfully created image."
      #redirect_to gallery_path(params[:gallery_id])
      #redirect_to("/content/gallery/20" + params[:gallery_id].to_s)
      #gallery_url = "/content/gallery/" + params[:gallery_id].to_s
      redirect_to :back
    else
      render :action => 'images'
    end
  end

  def upload
    @name = params[:upload][:file].original_filename
    @directory = "public/images/upload"
    @path = File.join(@directory, @name)
    File.open(@path, "wb") { |f| f.write(params[:upload][:file].read) }
    flash[:notice] = "File uploaded"
    redirect_to "/content/gallery/1"
    #render "images"

  end

  def load
  	@image_data = Image.find(params[:id])
  	@image = @image_data.binary_data
  	send_data @image, :type => @image_data.content_type, :filename => @image_data.filename
  end

end
