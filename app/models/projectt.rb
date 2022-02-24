class Projectt < ApplicationRecord

belongs_to :manager, class_name: "User"
belongs_to :developer, class_name: "User"
belongs_to :qa, class_name: "User"


end
