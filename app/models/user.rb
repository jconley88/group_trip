class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :groups

  field :first_name, :type => String
  field :last_name, :type => String
  field :username, :type => String
  field :street, :type => String
  field :city, :type => String
  field :state, :type => String
  field :zip, :type => String
  field :email, :type => String
end
