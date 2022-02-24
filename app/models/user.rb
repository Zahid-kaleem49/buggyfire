class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
  enum user_type: { manager: 0, developer: 1, qa: 2 }
  has_many :manager_projectts, class_name: "Projectt", foreign_key: "manager_id"
  has_many :developer_projectts, class_name: "Projectt", foreign_key: "developer_id"
  has_many :qa_projectts, class_name: "Projectt", foreign_key: "qa_id"
  
  end
