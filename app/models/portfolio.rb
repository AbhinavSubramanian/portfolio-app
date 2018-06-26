class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }


    validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    def self.by_position
      order("position ASC")
    end

    after_initialize :set_defaults

    def set_defaults
      self.main_image||="http://via.placeholder.com/600x400"
      self.thumb_image||="http://via.placeholder.com/350x150"
    end

end
