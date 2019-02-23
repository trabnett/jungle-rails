class RatingsController < ApplicationController

    def index
        @ratings = Rating.all.order(created_at: :desc)
    end

    def show
        @rating = Rating.find params[:id]
    end


    def create
        @prating = Rating.new(rating_params)
    
        if @rating.save
          redirect_to [:admin, :products], notice: 'Rating recorded!'
        else
          render :new
        end
    end

    def destroy
    @rating = Rating.find params[:id]
    @rating.destroy
    redirect_to [:admin, :products], notice: 'Rating deleted!'
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
