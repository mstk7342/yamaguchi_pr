class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :city


  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :category_id
    validates :city_id
  end

  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :text, length: { maximum: 1000 }
    validates :image
  end
end
