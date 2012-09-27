# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
	
	before { @user = User.new(:name => 'Safal M Joshi', :email => "safalmj@gmail.com") }

	subject { @user}

	it { should respond_to(:name) }
	it { should respond_to(:email) }

	it {should be_valid}
    
    describe "When user name is not present" do
       before { @user.name = " "}
       it { should_not be_valid }
    end

    describe "When user email is not present" do 
        before { @user.email = " " }
        it { should_not be_valid }
    end

    describe "When the name is too long" do 
        before { @user.name = "a" * 51}
        it { should_not be_valid }
    end
    
end



