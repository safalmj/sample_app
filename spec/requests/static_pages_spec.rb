require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit root_path
      #page.should have_content('Sample App')
      page.should have_selector('h1',
                        :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
    end
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
  	  visit help_path
  	  page.should have_selector('h1',
                         :text => 'Help')
  	end

    it "should have the title 'Help'" do
     visit help_path
     page.should have_selector('title',
                          :text => "#{base_title} | Help")
    end
  end

  describe "About Us" do
  	it "should have the h1 'About us'" do
      visit about_path
      page.should have_selector('h1',
                        :text => "About")
  	end	

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                      :text => "#{base_title} | About")
    end
  end	

  describe "Contact Page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1',
                        :text => "Contact")
    end

    it "should have the title 'Contact'" do 
      visit contact_path 
      page.should have_selector('title',
                        :text => "#{base_title} | Contact")
    end

  end
end
