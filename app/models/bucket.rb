class Bucket < ApplicationRecord
    has_many :tasks, dependent: :destroy, :foreign_key => 'Bucket_id', :primary_key => 'id'
    validates :name, presence: true,
    length: { minimum: 5 }
end
