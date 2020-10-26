class Tel < ApplicationRecord
    validates :full_name, presence: true, length: { maximum: 10 }
    # validates :tel_num, presence: true,
    # format: { with: /[^\d\-]/, allow_blank: true},
    # length: { minimum: 8, maximum: 20, allow_blank: true },
    # uniqueness: { case_sensitive: false }
end