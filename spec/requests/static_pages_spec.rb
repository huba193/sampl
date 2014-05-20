require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sampl'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sampl')
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

   describe "Kontakt" do

    it "should have the content 'Kontakt'" do
      visit '/static_pages/kontakt'
      expect(page).to have_content('Kontakt')
    end
    it "should have the title 'Kontakt'" do
      visit '/static_pages/kontakt'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Kontakt")
    end
  end
   describe "Contact" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end