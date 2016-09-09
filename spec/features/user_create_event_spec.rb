require 'rails_helper'

feature 'Create event' do
  scenario 'User create event' do
    visit new_event_path

    fill_in 'Nome do evento',       with: 'Evento de teste'
    fill_in 'Localização',          with: 'Bela vista'
    fill_in 'Data',                 with: '8/9/2016'
    fill_in 'Hora',                 with: '19:00'
    fill_in 'Descrição',            with: 'Uma descrição curta...'

    click_on 'Cadastrar evento'

    expect(page).to have_css('h1', text: 'Evento de teste')
    expect(page).to have_content 'Bela vista'
    expect(page).to have_content '8/9/2016'
    expect(page).to have_content '19:00'
    expect(page).to have_content 'Uma descrição curta...'
  end
end
