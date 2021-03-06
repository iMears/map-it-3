class User < ActiveRecord::Base
  has_many :statuses

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def full_name
    "#{first_name} #{last_name}"
  end
end
