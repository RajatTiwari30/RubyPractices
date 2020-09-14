class Post < ApplicationRecord
    belongs_to :category
    has_many :taggings
    has_many :tags, through: :taggings
    default_scope {order :created_at}
    scope :published, -> { where(published:true) }
    scope :unpublished, -> { where.not(published:true) }
    scope :order_by_latest, -> { reorder(created_at: :desc) }
end
