class Category < ApplicationRecord
    validates :name, presence: true
    has_many :posts, dependent: :nullify #:destroy
    before_save :create_slug

    def create_slug
        self.slug=self.name.downcase.tr(" ","-")
    end

end
