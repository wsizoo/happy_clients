class Story < ActiveRecord::Base
  scope :from_this_month, where("created_at > ? AND < ?", Time.now.beginning_of_month, Time.now.end_of_month)
end
