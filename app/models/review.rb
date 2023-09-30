class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :moviegoer
    validates :content, presence: true
    validates :rating, inclusion: { in: 1..5 }
  end
  