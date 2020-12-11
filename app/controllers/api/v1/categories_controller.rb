module Api
    module V1
        class CategoriesController < ApplicationController
            def new
                category = Category.new
            end

            def create
                category = Category.new(category_params)
                if recipe.save
                    render json: {status: 'Success', message: 'Saved Category', data: [category, category.recipes]}, status: :ok
                else
                    render json: {status: 'Error', message: 'Category not saved', data:category.errors}, status: :unprocessable_entity
                end
            end

            def index
                categories = Category.order('created_at ASC')
                render json: {status: 'Success', message: 'Loaded categories', data:categories}, status: :ok
            end

            def show
                category = Category.find(params[:id])
                render json: {status: "Success", message: "Loaded category", data: [category, category.recipes]}, status: :ok
            end

            def update
                category = Category.find(params[:id])
                if category.update_attributes(category_params)
                    render json: {status: 'Success', message: 'Updated category', data: [category, category.recipes]}, status: :ok
                else
                    render json: {status: 'Error', message: 'Category not updated', data: category.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                category = Category.find(params[:id])
                category.destroy
                render json: {status: 'Success', message: 'Deleted category', data: [category, category.recipes]}, status: :ok    
            end

            private

            def category_params
                params.permit(:name)
            end
        end
    end
end