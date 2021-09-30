module Api
  module V1
    class ToolsController < ApplicationController

      # List all tools
      def index
        @tools = Tool.all
        render json: @tools, status: :ok
      end

      # Register a new tool
      def create
        @tool = Tool.new(tool_params)
        if @tool.save
          render json: @tool, status: :created
        end
      end

      private

      # Allowed parameters to create a new tool
      def tool_params
        params.require(:tool).permit(:title, :link, :description, :tags)
      end


    end
  end
end