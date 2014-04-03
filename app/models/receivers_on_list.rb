class ReceiversOnList < ActiveRecord::Base

  validates :receiver, presence: true
  validates :list, presence: true

  belongs_to :receiver
  belongs_to :list

end
