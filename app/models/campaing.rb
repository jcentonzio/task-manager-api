class Campaing < ApplicationRecord
  belongs_to :type_campaing
  belongs_to :restriction
  belongs_to :time_for_sending
  belongs_to :car_restriction
  belongs_to :option_restriction
  belongs_to :time_for_sending
  belongs_to :when_the_newletter
  belongs_to :who_will_receive_newletter
end
