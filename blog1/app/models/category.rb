class Category < ApplicationRecord
    validates :name, presence: true
    has_many :posts, dependent: :nullify #:destroy
end
