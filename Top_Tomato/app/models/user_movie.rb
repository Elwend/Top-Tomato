class UserMovie < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :movie, dependent: :destroy
end
