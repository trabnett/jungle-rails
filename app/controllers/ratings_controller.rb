class RatingsController < ApplicationController
    before_action :find_product

    def index
        @ratings = Rating.all.order(created_at: :desc)
    end

    def show
        @rating = Rating.find params[:id]
    end

    def new
        @rating = Rating.new
    end

    def create
        @rating = Rating.new(rating_params)
        @rating.product_id = @product.id
        @rating.user_id = current_user.id
        if @rating.save
          redirect_to product_path(@product), notice: 'Rating recorded!'
        else
            puts rating_params
          render :new
        end
    end

    def destroy
        @rating = Rating.find params[:id]
        @rating.destroy
        redirect_to :back
    end
    
    private

    def rating_params
        params.require(:rating).permit(
            :product_id,
            :user_id,
            :description,
            :rating
        )
    end

    def find_product
        @product = Product.find(params[:product_id])
    end



end
