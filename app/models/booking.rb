class Booking < ApplicationRecord
  belongs_to :user, :dog
  has_many :reviews
end
