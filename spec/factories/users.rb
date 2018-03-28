FactoryGirl.define do 

  factory :user do 
    #email {Faker::Internet.email}
    email 'jcentonzio@gmail.com'
    password '123456'
    password_confirmation '123456'
  end  

end