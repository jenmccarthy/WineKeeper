class Type < ActiveRecord::Base
  validates :name, :presence => true

  has_many :wines
  has_many :tags

end
