# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  validates :artist_id, uniqueness: {scope: :title}
  validates :title, :image_url, :artist_id, presence: true 

  belongs_to :artist, 
  primary_key: :id, 
  foreign_key: :artist_id, 
  class_name: :User

  has_many :artworkshares,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare


end 
