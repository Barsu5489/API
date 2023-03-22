class ApplicationRecord < ActiveRecord::Base
  #Should not be recognized as a table
  primary_abstract_class
end
