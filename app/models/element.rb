class Element < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :system_id
  belongs_to :system
  has_many:missions
  has_many:details

end
