class User < ActiveRecord::Base
    INDIVIDUAL_ROLES = ['Student', 'Researcher']
    before_save { self.email = email.downcase }
    validates :name,  presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    validates :individualrole,  presence: true
    validates :org,  presence: true
    validates :dept,  presence: true
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
