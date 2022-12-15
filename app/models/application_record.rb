class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  #Add UUID ORDER
  self.implicit_order_column = "created_at"


  scope :dashboard, -> { all.order('created_at desc')}
  scope :lastSigned, -> {all.order('last_sign_in_at desc')}

  # Ex:- scope :active, -> {where(:active => true)}
  scope :membership, -> { where("category = ?", "Adherent" || "organisation").order('created_at desc')}
  scope :monthlyActif, ->  { where(:created_at => (Time.now.midnight - 30.day)..Time.now.midnight)}
  scope :weeklyActif, ->  { where(:created_at => (Time.now.midnight - 7.day)..Time.now.midnight)}
  # Ex:- scope :active, {where(:active => true)}


end
