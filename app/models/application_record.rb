class ApplicationRecord < ActiveRecord::Base
  # primary_abstract_class
  primary_abstract_class

  # Rails.logger.info("INSIDE APPLICATION RECORD");
  # self.abstract_class = true

  def self.ransackable_attributes(auth_object = nil)
    column_names + _ransackers.keys
  end

#   def self.ransackable_associations(auth_object = nil)
#     re
#   end
end
