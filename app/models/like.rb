class Like < ApplicationRecord
  belongs_to :micropost
  validates :micropost_id, presence: true
  validates :user_id, presence: true
end
