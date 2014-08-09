require 'carrierwave/mongoid'
class Movie
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title     , type: String
  field :mid       , type: Integer
  field :description, type: String
  field :mid_yahoo, type: Integer
  field :mid_pia, type: Integer
  field :mid_imdb, type: Integer
  field :mid_tomato, type: Integer
  field :director, type: String
  field :open_date, type: Date

  mount_uploader :image, ImageUploader
  #attr_accessible :image, :image_cache

  embeds_many :reviews
  #has_and_belongs_to_many :actors
  #accepts_nested_attributes_for :actors  
end

