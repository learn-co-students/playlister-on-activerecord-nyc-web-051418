class Song < ActiveRecord::Base

  belongs_to :artist	# be careful - this is singular!
  belongs_to :genre

end
