# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  body        :text
#  tag         :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :post_comments

  has_attached_file :image, :default_url => "https://res.cloudinary.com/swy/image/upload/v1499750590/images/pexels-photo.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :title, presence: true
  validates :category_id, presence: true
  validates :body, presence: true

  def self.search(query)
    where("title like ? OR body like ? OR tags like ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
