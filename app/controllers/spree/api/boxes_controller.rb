module Spree
  module Api
    class BoxesController < BaseApiController
      respond_to :json
      skip_before_filter :verify_authenticity_token
      before_action :authenticate_user, :except => [ :index, :show ]
      
      def index
        @boxes = Bm::Box.all
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
        
        @box = Bm::Box.create(box_params)
        render :json => @box
      end
      
      def edit
        
      end
      
      private
      
      def box_params
        params.require(:box).permit(:spree_user_id, :bm_expert_id, :name, :image_url, :store, :time_cook, :description, :recipe_link, :difficulty)
      end
    end
  end
end