class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :email, :type =>String

  belongs_to :sales_team
end