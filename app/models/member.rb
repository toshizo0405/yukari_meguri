class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,dependent: :destroy
  has_many :bookmarks,dependent: :destroy
  has_many :comments,dependent: :destroy

  validates :last_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name, presence: true
  validates :first_name_kana, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |member|
      member.password = SecureRandom.urlsafe_base64
    end
  end

  def active_for_authentication?
    super && (withdrawal == false)
  end

  def full_name
    "#{last_name} #{first_name}"
  end


end
