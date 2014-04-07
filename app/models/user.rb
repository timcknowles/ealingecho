class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :role_id
  # attr_accessible :title, :body
  validates_format_of :email, :with => /\A([^@\s]+)@(nhs\.net)\z/, :message => "not a valid nhs.net email"

  has_many :assignments
  has_many :requests, through: :assignments
  belongs_to :role
  def self.list_users 
    User.select("id, email").map {|x| [x.id, x.email] }
  end

end
