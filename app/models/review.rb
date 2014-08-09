class Review
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :rid, type: Integer
  field :rating, type: Integer
  field :content, type: String
  field :datetime, type: DateTime

  embedded_in :yahoo
end

