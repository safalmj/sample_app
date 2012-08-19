require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      #page.should have_content('Sample App')
      page.should have_selector('h1',
                        :text => 'Sample App')
    end

    # it "should have title page 'Home'" do
    #   visit '/static_pages/home'
    #   page.should have_selector('title',
    #                     :text => "#{base_title} | Home")
    # end

    it "should have base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                               :text => "#{base_title}")
    end

    it "shoudl have custom page title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Home')
    end
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('h1',
                         :text => 'Help')
  	end

    it "should have title 'Help'" do
     visit '/static_pages/help'
     page.should have_selector('title',
                          :text => "#{base_title} | Help")
    end
  end

  describe "About Us" do
  	it "should have the content 'About us'" do
      visit "/static_pages/about"
      page.should have_content('About Us')
  	end	

    it "should have title 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector('title',
                      :text =>"#{base_title} | About")
    end
  end	
end
