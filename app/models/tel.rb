class Tel < ApplicationRecord
    belongs_to :friend, optional: true, foreign_key: "friend_id"
    validates :tel_num, presence: true,
    format: { with: /\A[0-9\-\(\)]+\z/},
    length: { minimum: 8, maximum: 20, allow_blank: true },
    uniqueness: { case_sensitive: false }
end