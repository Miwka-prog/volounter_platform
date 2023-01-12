class VolunteerHelpRequest < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  enum status: { pending: 0, in_progress: 1, finished: 2 }
end
