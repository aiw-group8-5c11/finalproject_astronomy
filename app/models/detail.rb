class Detail < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :element_id
  validates_presence_of :description
  belongs_to :element
  has_many :images
end
