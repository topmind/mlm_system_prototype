class SalesTeam
	include Mongoid::Document
	include Mongoid::Timestamps
	field :name, :type => String
	field :commission_percentage, :type => Float
	field :commission_amout, :type => Float
	field :owner, :type => String 

	has_many :users
end
