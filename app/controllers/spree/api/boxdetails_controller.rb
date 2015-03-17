module Spree
  module Api
    class BoxdetailsController < ApplicationController
      respond_to :json
      skip_before_filter :verify_authenticity_token
      
      def index
        @bd = Bm::BoxDetail.all
        respond_with @bd
      end
      
      def create
        @bd = Bm::BoxDetail.create(:product_id => params[:p_id], :box_id => params[:b_id])
        flash[:notice] = 'User was successfully created.' if @bd.save
        respond_with(@bd, default_template: :show, status: 201)
      end
    end
  end
end