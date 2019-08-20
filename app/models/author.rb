class Author < ApplicationRecord
    after_initialize :set_defaults
    has_many :books, dependent: :destroy

    def full_name
        "#{last_name}, #{first_name}"
    end
    
    private
    def set_defaults
        self.country ||= "Argentina"
    end
end
