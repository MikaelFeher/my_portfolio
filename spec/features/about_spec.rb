describe 'about', type: :feature do
  before do
    visit '/en/'
  end

  it 'navigates to the about me page' do
    within '#main-menu' do
      click_link 'About Me'
    end
    expect(page.current_path).to eq '/en/about/'
  end

  it 'displays About Me on the page' do
    visit '/en/about/'
    expect(page).to have_content 'About Me'
  end



end
