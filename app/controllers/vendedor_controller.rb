class VendedorController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to "/welcome"
    
    else
    #@pagy, @records = pagy(Product.all)
    @pagy, @vendedores = pagy(Vendedor.all)
    
    if params[:query_text].present?
      @vendedores = @vendedores.search_full_text(params[:query_text])
      end     
  end
end
