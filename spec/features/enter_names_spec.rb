
feature 'entering names' do
  scenario 'submitting names' do 
    visit('/')
    fill_in :player_1_name, with: 'Sean'
    fill_in :player_2_name, with: 'Tarun'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Sean vs Tarun'
  end
end
