require 'rails_helper'

feature 'Create therapist dog' do
  scenario 'User create dog' do
    visit new_therapist_dog_path

    fill_in 'Nome',                 with: 'Bob'
    fill_in 'Data de nascimento',   with: '01/12/2014'
    fill_in 'Raça',                 with: 'Bernese'
    fill_in 'Status',               with: 'Ativo'
    fill_in 'Descrição',            with: 'Muto dócil...'

    click_on 'Cadastrar Cão terapeuta'

    expect(page).to have_css('h1', text: 'Cão terapeuta')
      expect(page).to have_content 'Bob'
    expect(page).to have_content '01/12/2014'
    expect(page).to have_content 'Bernese'
    expect(page).to have_content 'Ativo'
    expect(page).to have_content 'Muto dócil...'
  end
end
