class Snail < ApplicationRecord
  has_many :trails

  def total_trail_length
    total = 0
    trails.each do |trail|
      total += trail.length
    end
    total
  end

  def longest_trail
    trails.max_by(&:length)
  end
end
