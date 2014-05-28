require 'spec_helper'

describe "Static pages" do

 subject { page }
  describe "Home page" do
before { visit root_path }

    it { should have_content('Witaj') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

 describe "O nas" do
    before { visit about_path }

    it { should have_content('O nas') }
    it { should have_title(full_title('About Us')) }
  end

describe "Kontakt page" do
    before { visit kontakt_path }

    it { should have_content('Kontakt') }
    it { should have_title(full_title('Kontakt')) }
  end
 describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end