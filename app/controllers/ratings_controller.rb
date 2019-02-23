class RatingsController < ApplicationController

    def index
        @ratings = Rating.all.order(created_at: :desc)
    end

    def show
        @rating = Rating.find params[:id]
    end

    def new
        @rating = Rating.new
        @product = Product.find params[:product]
        @current_user = current_user
    end

    def create
        @rating = Rating.new(rating_params)
        if @rating.save
          redirect_to root_path, notice: 'Rating recorded!'
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



end
