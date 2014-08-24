class MovieMerger
  include Mongoid::Document
  include Mongoid::Timestamps

  field :mid_pia, type: Integer
  field :mid_tomato, type: Integer
end
