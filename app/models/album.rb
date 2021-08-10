class Album < ApplicationRecord
  # belongs_to :user
  # has_many :pictures
  has_one_attached :album_cover_photo
  validates :title, presence: true

  before_save(:titleize_title)

  private
    def titleize_title
      self.title = self.title.titleize
    end
end