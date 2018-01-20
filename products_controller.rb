class ProductsController < ActionController
  before_filter :authenticate
  caches_action :index
  caches_action :show, :layout => false

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    expire_action :action => :index
  end

end

