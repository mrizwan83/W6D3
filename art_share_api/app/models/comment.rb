# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  user_id    :integer          not null
#  artwork_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  validates :body, :user_id, :artwork_id, presence: true 

  belongs_to :author, 
  primary_key: :id, 
  foreign_key: :user_id, 
  class_name: :User

  belongs_to :artwork,
  primary_key: :id, 
  foreign_key: :artwork_id, 
  class_name: :Artwork

  has_many :likes,
  primary_key: :id, 
  foreign_key: :likes_id,
  class_name: :Like



end 
