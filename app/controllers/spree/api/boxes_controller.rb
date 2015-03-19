module Spree
  module Api
    class BoxesController < BaseApiController
      respond_to :json
      skip_before_filter :verify_authenticity_token
      before_action :authenticate_user, :except => :index
      
      def index
        @box = Bm::Box.all
        render :json => @box
      end
      
      def create
        #Validate datas
        Spree::User.find(params[:uid])
        
        @box = Bm::Box.create(:spree_user_id => params[:uid], :name => params[:name], :description => params[:desc], :comment => params[:cmt])
        render :json => @box
      end
    end
  end
end