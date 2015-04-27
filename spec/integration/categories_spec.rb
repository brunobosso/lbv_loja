# encoding: utf-8
require 'spec_helper'

describe 'Como operador', type: :request do
  describe 'Posso genrenciar as categorias' do
    context 'Tendo algumas categorias' do
      before :each do
        FactoryGirl.create_list(:category, 3)
        visit admin_categories_path
      end

      specify 'Eu posso visualizar as informaçoes das categorias' do
        categories = Category.all
        categories.each do |category|
          expect(page).to have_content(category.id.to_s)
          expect(page).to have_content(category.name)
        end
      end

      context 'Na pagina de nova categoria' do
        before :each do
          find(".btn-novo").click
        end

        specify 'Eu posso criar uma nova categoria' do
          fill_in 'category_name', with: "Nova Categoria"
          click_button "Salvar"

          category = Category.last
          expect(category.name).to eq('Nova Categoria')
        end

      end
    end
  end
end




=begin
    context 'having no categories' do
      specify 'I should see a message saying there are no categories' do
        visit admin_categories_path
        expect(page).to have_content("Nenhuma categoria cadastrada")
      end
    end

      specify 'I can see one category details' do
        category = Category.first
        find(".cpy-category-show-#{category.id}").click

        expect(page).to have_content(category.id.to_s)
        expect(page).to have_content(category.name)
        expect(page).to have_content(category.description)
      end

      context 'in the new page' do
        before :each do
          find(".cpy-category-new").click
        end
        specify 'I can create a new category' do
          fill_in 'category_name', with: 'Category test'
          fill_in 'category_description', with: 'Category test description'

          click_button "Salvar"

          category = Category.last

          expect(category.name).to eq('Category test')
          expect(category.description).to eq('Category test description')
        end

        describe 'I can see errors messages' do
          include_examples 'category form with invalid inputs'
        end
      end

      context 'in the edit page' do
        before :each do
          @category = Category.first

          find(".cpy-category-edit-#{@category.id}").click
        end

        specify 'I can edit an category' do
          new_description = @category.description + " and it's good!"
          fill_in 'category_description', with: new_description
          click_button "Salvar"

          @category.reload

          expect(@category.description).to eq(new_description)
        end

        describe 'I can see errors messages' do
          include_examples 'category form with invalid inputs'
        end
      end

      specify 'I can delete an category' do
        category = Category.first
        find(".cpy-category-delete-#{category.id}").click

        expect(page).not_to have_content(category.name)

        expect( Category.exists? category.id ).to eq(false)
      end

      specify 'I can delete an category from show page' do
        category = Category.first
        find(".cpy-category-show-#{category.id}").click

        find(".btn-delete-category").click

        expect(page).not_to have_content(category.name)

        expect( Category.exists? category.id ).to eq(false)
      end
    end
=end    