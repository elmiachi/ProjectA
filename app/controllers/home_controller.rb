class HomeController < ApplicationController
    PRODUCT_COUNT = 100
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
        
        @last_page = ( PRODUCT_COUNT / LIMITED_PRODUCT_NUMBER )
        @first_page = 1
        
        @products=[]
        (1..PRODUCT_COUNT).each do |index|
            product = {
            id:index,
            name:"柳橙汁#{index}",
            description:"酸酸甜甜",
            image_url:"https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg?h=350&auto=compress&cs=tinysrgb"
            }
            @products << product
        end
        
        @products = @products[(@page - 1) * LIMITED_PRODUCT_NUMBER , LIMITED_PRODUCT_NUMBER]
    end
    
end
