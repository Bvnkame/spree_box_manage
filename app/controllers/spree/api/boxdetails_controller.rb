module Spree
  module Api
    class BoxdetailsController < BaseApiController
      respond_to :json
      
      def index
        @bd = Bm::BoxDetail.all
        respond_with @bd
      end
      
      def create
        Bm::Box.find(params[:b_id])
        Spree::Product.find(params[:p_id])
        
        @check_exist = Bm::BoxDetail.exists?(:spree_product_id => params[:p_id], :bm_box_id => params[:b_id])
        
        if @check_exist
          render_error_douplicate
          return
        end
        
        @bd = Bm::BoxDetail.create(:spree_product_id => params[:p_id], :bm_box_id => params[:b_id])
        
        render :json => @bd
      end
    end
  end
end