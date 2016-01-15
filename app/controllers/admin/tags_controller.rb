class Admin::TagsController < AdminController
  def index
    @tags = Tag.all
  end

  def show
    @tags = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(params[:tag])
    if @tags
      redirect_to admin_tags_path
    else
      render :edit
    end
  end

  def edit
    @tags = Tag.find(params[:id])
  end

  def update
    @tags = Tag.find(params[:id])

    if @tags.update_attributes(params[:tag])
      redirect_to admin_tags_path
    else
      render :edit
    end

  end

  def destroy
    @tags = Tag.find(params[:id])
    redirect_to admin_tags_path if @tags.destroy
  end
end
