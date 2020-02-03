# frozen_string_literal: true

class User < ApplicationRecord
  before_create :remember
  validates :name, presence: true, allow_blank: false
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  has_many :posts

  private

  def remember
    token = SecureRandom.urlsafe_base64.to_s
    self.remember_token = Digest::SHA1.hexdigest token
  end
end
