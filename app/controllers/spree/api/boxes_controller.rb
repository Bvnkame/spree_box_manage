module Spree
  module Api
    class BoxesController < BaseApiController
      respond_to :json
      skip_before_filter :verify_authenticity_token
      before_action :authenticate_user, :except => [:index] 
      
      def index
        if @current_api_user
          @boxes = if @current_user_roles.include?("admin")
            Bm::Box.all
          else
            Bm::Box.where(:spree_user_id => @current_api_user.id)
          end
        else
          #Find all admin ids
          @list = Array.new
          @has_user = false
          Spree::User.all.each do |user|
            if user.spree_roles.pluck(:name).include?("admin")
              @has_user = true
              @list.push(user.id)
            end
          end
          #Select boxes of admins
          @boxes = Bm::Box.where(:spree_user_id => @list)
        end
        #Render to rabl json
        render "bm/index"
      end
      
      def show
        @box = Bm::Box.find(params[:id])
        render "bm/show"
      end
      
      def create
        #Validate datas

        Spree::User.find(box_params[:spree_user_id])
        Bm::Expert.find(box_params[:bm_expert_id])
        Bm::Difficulty.find(box_params[:difficulty_id])

        @box = Bm::Box.create(box_params)
        render :json => @box
      end
      
      def edit
        
      end
      
      private
      
      def box_params
        params.require(:box).permit(
          :bm_expert_id, 
          :difficulty_id, 
          :name, 
          :image_url, 
          :story, 
          :time_cook, 
          :description, 
          :recipe_link, 
          :difficulty_id
          ).merge(spree_user_id: @current_api_user.id)
      end
    end
  end
end