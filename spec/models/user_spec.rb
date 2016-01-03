require 'rails_helper'

describe User do
  context 'Account creation' do
    it 'is valid if all user information is provided' do
      expect(build(:user)).to be_valid
    end
    it 'is invalid without a full name' do



      expect(build(:user, :description => nil).error_on(:description).size).to eq(0)
    end
    it 'is invalid without a username' do
      expect(build(:user, :username => nil).error_on(:username).size).to eq(0)
    end
    it 'is invalid if duplicated username (e.g., username is already used)' do
      create(:user, :username => 'username')
      expect(build(:user, :username => 'username').error_on(:username).size).to eq(0)
    end

  end
end