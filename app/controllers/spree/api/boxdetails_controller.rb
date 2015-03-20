module Spree
  module Api
    class BoxdetailsController < BaseApiController
      respond_to :json
      skip_before_filter :verify_authenticity_token
      before_action :authenticate_user, :except => [ :index, :show ]
      
      def index
        @boxdetails = Bm::BoxDetail.all
        render "bm/boxdetail/index"
      end
      
      def show
        @boxdetail = Bm::BoxDetail.find(params[:id])
        render "bm/boxdetail/show"
      end
      
      def create
        #Validate datas
        Spree::Product.find(boxdetail_params[:spree_product_id])
        Bm::Expert.find(boxdetail_params[:bm_expert_id])
        
        @boxdetail = Bm::BoxDetail.create(boxdetail_params)
        render :json => @boxdetail
      end
      
      private
      
      def boxdetail_params
        params.require(:boxdetail).permit(:bm_box_id, :spree_product_id)
      end
    end
  end
end