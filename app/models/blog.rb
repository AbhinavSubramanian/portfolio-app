class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  has_many :comments, dependent: :destroy
  belongs_to :topic

  def self.recent
      order("created_at DESC")
  end

end
