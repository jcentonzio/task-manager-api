require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  it {is_expected.to validate_presence_of(:email)}
  it {is_expected.to validate_uniqueness_of(:email).case_insensitive}
  it {is_expected.to validate_confirmation_of(:password)}
  it {is_expected.to allow_value('jcentonzio@gmail.com').for(:email)}
  it {is_expected.to validate_uniqueness_of(:auth_token)}


  describe '#info' do
    it 'return email and created_at' do
      user.save!
      expect(user.info).to eq("#{user.email} - #{user.created_at}")      
    end
    
  end


  
  


  # context 'when name is blank' do 
  #   before { user.name = " " }
  #   it {expect(user).not_to be_valid}
  # end  

  # context 'when name is nil' do 
  #   before { user.name = nil }
  #   it {expect(user).not_to be_valid}
  # end  

  #it {expect(user).to validate_presence_of(:name)}
  

  # before { @user = FactoryGirl.build(:user) }

  #subject { build(:user) }
 
  #it { expect(@user).to respond_to(:email) }
  #it { expect(user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }

  # subject = User.new

  #it { expect(subject).to respond_to(:email) }
  #it { expect(subject).to be_valid }

  # it { expect(subject).to respond_to(:email) }
  #it {is_expected.to respond_to(:email) }
  #it {is_expected.to respond_to(:name) }

  

end
