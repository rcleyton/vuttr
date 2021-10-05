module Api
  module V1
    class ToolsController < ApplicationController

      # List all tools
      def index
        @tools = Tool.all
        render json: @tools, status: :ok
      end

      # Search tool by tag, params[:q] is the search parameter
      def search
        @tool = []
        @tools = Tool.all.each do |tool|
          if tool[:tags].include?(params[:q])
            @tool.append(tool)
          end
        end
        render json: @tool
      end

      # Register a new tool
      def create
        @tool = Tool.new(tool_params)
        if @tool.save
          render json: @tool, status: :created
        end
      end

      # Delete a tool
      def destroy
        @tool = Tool.find(params[:id])
        @tool.destroy
        render json: @tool, status: :ok
      end

      private

      # Allowed parameters to create a new tool
      def tool_params
        params.require(:tool).permit(:title, :link, :description, tags: [])
      end


    end
  end
end