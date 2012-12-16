class Product
  include Mongoid::Document
  field :name,  type: String
  field :price, type: BigDecimal
  field :released_on, type: Date

  embeds_many :reviews

  validates_presence_of :name

  accepts_nested_attributes_for :reviews, allow_destroy: true

  attr_accessible :name, :price, :released_on, :reviews_attributes
end
