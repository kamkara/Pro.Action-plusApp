class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  #Add UUID ORDER
  self.implicit_order_column = "created_at"



end
