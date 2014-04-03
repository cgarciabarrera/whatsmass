class Receiver < ActiveRecord::Base

  belongs_to :user

  has_many :receivers_on_lists
  has_many :lists, through: :receivers_on_lists


  scope :mine, lambda{|user| { :conditions => { :user_id => user.id} }}

  validates_uniqueness_of :phone, :scope => :user_id

  validates :phone, numericality: true

  validates :phone, length: { in: 6..20 }

  validates :phone,  presence: true



end
