class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: { message: 'Password can\'t be blank'}
  validates :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  attr_reader :password

  def find_by_credentials(username, pw)
    user = User.find_by(username: username)
    return nil if user.nil?
    user.is_password?(pw) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset.session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(pw)
    @password = pw
    self.password_digest = BCrypt::Password.create(pw)
  end

  def self.is_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end


end
