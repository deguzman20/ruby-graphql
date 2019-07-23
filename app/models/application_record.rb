# this class was connected to ActiceRecord::Base or to our database
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
