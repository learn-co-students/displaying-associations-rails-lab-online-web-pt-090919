class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    self.songs.count
  end

  def make_title_case
    self.name = self.name.titlecase
  end
end
