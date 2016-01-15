class Admin::TagsController < AdminController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(params[:tag])
    if @tag
      redirect_to admin_tags_path
    else
      render :edit
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])

    if @tag.update_attributes(params[:tag])
      redirect_to admin_tags_path
    else
      render :edit
    end

  end

  def destroy
    @tag = Tag.find(params[:id])
    redirect_to admin_tags_path if @tag.destroy
  end
end
