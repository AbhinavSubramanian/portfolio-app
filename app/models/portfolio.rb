class Portfolio < ApplicationRecord
    has_many :technologies
    validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

    after_initialize :set_defaults

    def set_defaults
      self.main_image||="http://via.placeholder.com/600x400"
      self.thumb_image||="http://via.placeholder.com/350x150"
    end

end
