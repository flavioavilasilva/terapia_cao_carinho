require 'rails_helper'

feature 'Home' do
  scenario 'User visit home' do
    visit root_path
    expect(page).to have_css('h1', text: "Terapia Cão Carinho")
    expect(page).to have_link "Contribua com o TCC"
    expect(page).to have_css('h1', text: "Quem somos")
    expect(page).to have_css('h1', text: "Ultima visitas do TCC")
    expect(page).to have_css('h1', text: "Parceiros")
  end
end
