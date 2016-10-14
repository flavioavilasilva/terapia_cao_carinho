require 'rails_helper'

feature 'Create gallery event' do
  scenario 'User create gallery event sucessfuly' do
    visit event_path

    click_on 'Adicionar fotos'
  end
end
