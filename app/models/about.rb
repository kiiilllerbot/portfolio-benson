class About < ApplicationRecord
  belongs_to :user

  validates :title, presence:true
  validates :description, presence:true
  validates :quote, presence:true
  validates :fb_link, presence:true
  validates :ig_link, presence:true
  validates :twitter_link, presence:true
end
