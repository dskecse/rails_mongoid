class Review
  include Mongoid::Document
  field :content, type: String

  embedded_in :product

  validates_presence_of :content

  attr_accessible :content
end
