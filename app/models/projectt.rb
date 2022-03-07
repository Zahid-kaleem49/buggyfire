class Projectt < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, presence: true, length: { minimum: 5, maximum: 50 }

  has_many :bugs , :dependent => :destroy

  belongs_to :manager, class_name: "User"
  belongs_to :developer, class_name: "User"

  belongs_to :qa, class_name: "User"
end
