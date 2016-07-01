class House < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true

  has_many(
    :people,
    foreign_key: :house_id,
    primary_key: :id,
    class_name: "People"
  )
end
