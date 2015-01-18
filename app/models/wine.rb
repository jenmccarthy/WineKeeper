class Wine < ActiveRecord::Base
  validates :name, :presence => true
  validates :region, :presence => true
  validates :year, :presence => true
  validates :type_id, :presence => true

  belongs_to :type
end
