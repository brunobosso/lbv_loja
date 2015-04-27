# encoding: utf-8
require 'spec_helper'

describe 'As an user', type: :request do
  specify 'I can see test page' do
    visit root_path
    expect(page).to have_content("Operadores")  
  end
end
