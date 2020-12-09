module Api
    module V1
        class RecipesController < ApplicationController
            def index
                recipes = Recipe.order('updated_at DESC')
                render json: {status: 'Success', message: 'Loaded recipes', data:recipes}, status: :ok
            end

            def show
                recipe = Recipe.find(params[:id])
                render json: {status: 'Success', message: 'Loaded recipe', data: [recipe, recipe.categories]}, status: :ok
            end

            def create
                recipe = Recipe.new(recipe_params)
                if recipe.save
                    render json: {status: 'Success', message: 'Saved recipe', data: [recipe, recipe.categories]}, status: :ok
                else
                    render json: {status: 'Error', message: 'Recipe not saved', data:recipe.errors}, status: :unprocessable_entity
                end
            end

            def update
                recipe = Recipe.find(params[:id])
                if recipe.update_attributes(recipe_params)
                    render json: {status: 'Success', message: 'Updated recipe', data: [recipe, recipe.categories]}, status: :ok
                else
                    render json: {status: 'Error', message: 'Recipe not updated', data:recipe.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                recipe = Recipe.find(params[:id])
                recipe.destroy
                render json: {status: 'Success', message: 'Deleted recipe', data: [recipe, recipe.categories]}, status: :ok
            end

            private

            def recipe_params
                params.permit(:title, :ingredients, :instructions, :servings, :timeinvest, :source, :imageURL, :category_ids: [])
            end
        end
    end
end