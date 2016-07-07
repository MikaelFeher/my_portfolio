describe 'projects', type: :feature do
  before do
    visit '/en/'
  end

  it 'navigates to the projects page' do
    within '#main-menu' do
      click_link 'Projects'
    end
    expect(page.current_path).to eq '/en/projects/'
  end

  it 'displays Bootcamp Projects on the page' do
    visit '/en/projects/'
    expect(page).to have_content 'Bootcamp Projects'
  end

  it 'displays Prep Course Projects on the page' do
    visit '/en/projects/'
    expect(page).to have_content 'Prep Course Projects'
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
