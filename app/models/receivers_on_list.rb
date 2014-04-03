class ReceiversOnList < ActiveRecord::Base

  belongs_to :receiver
  belongs_to :list

end
