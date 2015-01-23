class Tag < ActiveRecord::Base

  validates :name, :presence => true
  validates :type_id, :presence => true

  belongs_to :type

end
