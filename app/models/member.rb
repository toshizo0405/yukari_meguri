class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,dependent: :destroy


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
