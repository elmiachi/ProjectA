class ProductsController < ApplicationController
    LIMITED_PRODUCT_NUMBER = 20
    def index
        @ad={
            title: "大型  廣告",
            des: "這是廣告",
            action_title: "更多"
        }
        
        if params[:page]
            @page = params[:page].to_i
        else
            @page = 1
        end
        
        @products= Product.all
        @first_page = 1
        count = @products.count
        @last_page = ( count / LIMITED_PRODUCT_NUMBER )
        if((count % LIMITED_PRODUCT_NUMBER) > 0)
            @last_page +=1
        end
        
        #@products=[]
        @products = @products.offset((@page-1) * LIMITED_PRODUCT_NUMBER).limit(LIMITED_PRODUCT_NUMBER)
    end
    
    def new
        @note=flash[:note]
    end
    
    def edit
        @id= params[:id]
        
    end
    
    def update
        product = Product.find(params[:id])
        product.update(product.permit)
    end 
    
    def create
        product=Product.create(product_permit)
        flash[:note]=product.id
        redirect_to action: :new
    end
    
    def product_permit
        params.permit([:name, :description, :image_url])
    end
    
end
