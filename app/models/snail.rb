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
    longest_trail = nil
    trails.each_with_index do |trail, index|
      trails.each do |other_trail|
        if trail.length >= other_trail.length
          longest_trail = trail
        end
      end
    end
    longest_trail
  end
end
