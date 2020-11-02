class Friend < ApplicationRecord
    has_many :tels, dependent: :destroy
    validates :name, presence: true, length: { maximum: 10 }
end
