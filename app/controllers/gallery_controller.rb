class GalleryController < ApplicationController
  def images
  	#if !params[:id].blank?
  		#@image = Image.find(params[:id]) if params[:id]
  	#end
    @image = params[:post]
    @painting = Painting.new
  end

  def gallery

  end

  def painting
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(params[:painting])
    if @painting.save
      flash[:notice] = "Successfully created painting."
      redirect_to "/content/gallery/1"
    else
      render :action => 'painting'
    end
  end

  def upload
  	#@image = params[:post]
  	#@description = params[:description]
  	#Image.create :filename => @image.filename, :content_type => @image.content_type, :binary_data => @image.binary_data, :description => @image.description
  	#Image.create :filename => 'Funny', :content_type => 'Image', :binary_data => 'test', :description => 'test'
  	
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
