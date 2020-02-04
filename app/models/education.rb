class Education < ApplicationRecord
  belongs_to :user

  validates :degree, presence:true
  validates :institution, presence:true
  validates :place, presence:true
  validates :description, presence:true
end
