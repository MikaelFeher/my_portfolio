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

  it 'renders header partial' do
    expect(page).to have_selector 'header'
    within 'header' do
      expect(page).to have_content 'Mikael Feher'
    end
  end

  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Copywrite Mikael Feher © 2016'
      expect(page).to have_content 'If you want to get in touch with me please click one of the links below.'
    end
  end

end
