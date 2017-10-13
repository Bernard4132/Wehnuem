class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attribute :email, :string

  after_create :assign_default_role

  has_many :jobs
  has_many :projects, through: :jobs
  has_many :progresses
  has_many :comments
  



  def assign_default_role
    self.add_role(:client) if self.roles.blank?
  end
end
