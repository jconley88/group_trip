class User
  include Mongoid::Document
  field :first_name, :type => String
  field :last_name, :type => String
  field :username, :type => String
  field :street, :type => String
  field :city, :type => String
  field :state, :type => String
  field :zip, :type => String
  field :email, :type => String
  attr_accessor :login

  attr_accessible :username
  attr_accessible :login
end
