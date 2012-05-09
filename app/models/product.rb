class Product
  include Mongoid::Document
  field :name, :type => String
  field :price, :type => Float

  has_and_belongs_to_many :users
end
