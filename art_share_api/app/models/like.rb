# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  likes_id   :integer          not null
#  artwork_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Like < ApplicationRecord
  validates :user_id, :likes_id, :artwork_id, presence: true 
  validates :user_id, uniqueness: {scope: [:likes_id, :artwork_id] }

  belongs_to :liker,
  primary_key: :id, 
  foreign_key: :user_id,
  class_name: :User

  belongs_to :comment_liked,
  primary_key: :id, 
  foreign_key: :likes_id,
  class_name: :Comment

  belongs_to :artwork_likes,
  primary_key: :id, 
  foreign_key: :artwork_id,
  class_name: :Artwork

end 
