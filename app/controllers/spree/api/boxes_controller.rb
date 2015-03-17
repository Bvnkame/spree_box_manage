module Spree
  module Api
    class BoxesController < ApplicationController
      respond_to :json
      
      def index
        @boxes = Bm::Box.all
        respond_with(@boxes)
      end
    end
  end
end