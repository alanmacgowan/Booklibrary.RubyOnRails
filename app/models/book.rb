class Book < ApplicationRecord
  validates :title,
            presence: true

  belongs_to :publisher
  belongs_to :author

end
