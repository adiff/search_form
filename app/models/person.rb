class Person < ActiveRecord::Base
def self.search(search)
  if search
    self.where("firstname LIKE ?", "%#{search}%")
  else
    self.all
  end
end
end
