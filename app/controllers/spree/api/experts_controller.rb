module Spree
  module Api
    class ExpertsController < BaseApiController
      respond_to :json
      skip_before_filter :verify_authenticity_token
      before_action :authenticate_user, :except => [ :index, :show ]
      
      def index
        @experts = Bm::Expert.all
        render "bm/expert/index"
      end
      
      def show
        @expert = Bm::Expert.find(params[:id])
        render "bm/expert/show"
      end
      
      def create
        @expert = Bm::Expert.create(expert_params)
        render :json => @expert
      end
      
      private
      
      def expert_params
        params.require(:expert).permit(:name, :title, :comment)
      end
    end
  end
end