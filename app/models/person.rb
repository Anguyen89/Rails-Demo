class Person < ActiveRecord::Base
  validates :name, :house_id, presence: true

  belongs_to(
    :house,
    foreign_key: :house_id,
    primary_key: :id,
    class_name: "House"
  )
end
