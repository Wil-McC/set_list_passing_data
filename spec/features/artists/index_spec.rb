require 'rails_helper'

RSpec.describe 'artist index page' do
  it 'see all artist names' do
    prince = Artist.create!(name: 'Prince')
    rtj = Artist.create!(name: 'Run The Jewels')
    caamp = Artist.create!(name: 'Caamp')

    visit "/artists"

    expect(page).to have_content(@prince.name)
    expect(page).to have_content(@rtj.name)
    expect(page).to have_content(@caamp.name)
  end
end
