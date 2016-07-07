  describe 'index', type: :feature do
    before do
      visit '/en/'
    end

  it 'says Hello World with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Hello World'
    end
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

  it 'shows a link to projects' do
    expect(page).to have_css 'a', text: 'Projects'
  end

  it 'shows a link to about page' do
    expect(page).to have_css 'a', text: 'About Me'
  end

  it 'shows a link to contact' do
    expect(page).to have_css 'a', text: 'Contact'
  end


  it 'navigates to Projects page' do
    within '#main-menu' do
      click_link 'Projects'
    end
    expect(page.current_path).to eq '/en/projects/'
  end

  xit 'displays contact list' do
    within '#main-menu' do
      page.find('#contact').trigger(:mouseover)
    end
    expect(page).to have_content 'Email'   # # expect(page).to have_css '.contact'
    # # within '.contact' do
    # within '#main-menu' do
    #   click_link 'Contact'
    # end

    # expect(page).to have_content 'LinkedIn'
  end

end
