class Song < ActiveRecord::Base
  # add associations here
  belongs_to :genre
  belongs_to :artist 
  has_many :notes
  accepts_nested_attributes_for :notes
  accepts_nested_attributes_for :genre

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end 

  def artist_name 
    self.artist ? self.artist.name : nil 
  end
end
