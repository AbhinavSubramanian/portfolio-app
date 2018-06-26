class Nestedform < ApplicationRecord
  has_many :contents
  accepts_nested_attributes_for :contents,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
end
