class Mission < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :element_id
  validates_presence_of :status_id
  belongs_to :element
  has_many :images
  has_many :lienkets
  belongs_to :status
end
