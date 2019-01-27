class Product < ApplicationRecord

  has_many :reviews
  has_many :issues
  has_many :reviewing_customers, through: :reviews, source: :customer
  has_many :complaining_customers, through: :issues, source: :customer

  validates :name, length: {minimum: 10}
  validates :code, length: {is: 4}
  validates :category,inclusion:{in: %w(BOARD STRATEGY ARCADE RPG SHOOTER),message:"%{value}is not a valid category"}


  def average_ratings
    return 0 if reviews.size == 0
    reviews.map{|review| review.rating}.inject(:+) / reviews.size
  end

  def issue_count
    # list = issues.map{|issue|issue.severity}
    count = Hash.new(0)
    issues.each{|issue| count[issue.severity]+=1}
    count
  end
end
