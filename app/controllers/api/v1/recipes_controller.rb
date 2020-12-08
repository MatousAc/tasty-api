module Api
    module V1
        class RecipesController < ApplicationController
            def index
                recipes = Recipe.order('created_at DESC')
                render json: {status: 'Success', message: 'Loaded recipes', data:recipes}, status: :ok
            end

            def show
                recipe = Recipe.find(params[:id])
                render json: {status: 'Success', message: 'Loaded recipe', data:recipe}, status: :ok
            end
        end
    end
end