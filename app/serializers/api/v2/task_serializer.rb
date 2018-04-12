class Api::V2::TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :done, :deadline, :user_id, :created_at, :updated_at,
             :short_description, :is_late, :deadline_to_es


  def short_description
    object.description[0..10] if object.description.present?
  end  

  def is_late
    Time.current > object.deadline if object.deadline.present?
  end 

  def deadline_to_es
    I18n.l(Time.now, format: :datetime) if object.deadline.present?
  end
  
  belongs_to :user
end
