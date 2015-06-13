class Person < ActiveRecord::Base
def self.search(search)
  if search
    self.where("firstname LIKE ? OR lastname LIKE ?", "%#{search}%", "%#{search}%")
  else
    self.all
  end
end
end
