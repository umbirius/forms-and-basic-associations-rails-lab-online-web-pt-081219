class Artist < ActiveRecord::Base
  # add associations here
  has_many :songs
  has_many :genres, through: :song
  has_many :notes, through: :song
end
