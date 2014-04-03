class List < ActiveRecord::Base

  belongs_to :user

  has_many :receivers_on_lists
  has_many :receivers, through: :receivers_on_lists


  scope :mine, lambda{|user| { :conditions => { :user_id => user.id} }}


end
