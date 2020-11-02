class Tel < ApplicationRecord
    belongs_to :friend, optional: true
    # validates :tel_num, presence: true,
    # format: { with: /[^\d\-]/, allow_blank: true},
    # length: { minimum: 8, maximum: 20, allow_blank: true },
    # uniqueness: { case_sensitive: false }
end