module Api
  module V1
    class ToolsController < ApplicationController

      # List all tools
      def index
        @tools = Tool.all
        render json: { status: 'Success' }, status: :ok
      end

    end
  end
end