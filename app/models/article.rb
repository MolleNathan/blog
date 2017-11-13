class Article < ApplicationRecord

  # belongs_to :category
  # belongs_to :user
  #
  # has_many :comments

def self.search(args)
  Article.where("title LIKE :query", query: "%#{args[:keywords]}%")

end

  #
  # validate :is_price_number?
  # validates_presence_of :title, :description, :picture, :price
  #
  # def self.search(params)
  #   out = []
  #   if params.has_key?(:category_id)
  #     out = Listing.where(["category_id = ?", params[:category_id]]).on
  # end

end
