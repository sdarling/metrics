class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :metric_users
  has_many :metrics, through: :metric_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  def should_generate_new_friendly_id?
    slug.blank? || firstname_changed? || lastname_changed?
  end  

  def full_name
  	self.firstname + ' ' + self.lastname
  end
      
end
