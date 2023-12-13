class Case < ApplicationRecord
  has_many_attached :files
  
  def self.clenup!
    where("created_at < ?", 20.minutes.ago).destroy_all
  end
end
