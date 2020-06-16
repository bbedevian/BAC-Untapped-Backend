class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
      end
  
      def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
      end 

      def create 
        user = User.create(user_params)
        if user.valid?
        render json: user, except: [:created_at, :updated_at]
        else render json: {errors: user.errors.full_messages}
        end 
      end

      # def user_by_id
      #   user = User.find(params[:id])
      #   render json: user, except: [:created_at, :updated_at]
      # end

      private

      def user_params
        params.require(:user).permit(:name, :password, :male, :weight)
      end

end
