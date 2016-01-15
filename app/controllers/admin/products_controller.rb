class Admin::ProductsController < AdminController
  def index
    @products = Product.order("rank ASC").all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    if @product = Product.create(params[:product])
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    redirect_to admin_products_path if @product.destroy
  end

  def sort_list
    @product = Product.find(params[:product][:id])
    @product.rank = params[:product][:rank]
    @product.save

    render nothing: true
  end



end
