class Owner < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  # TODO: add validations
  validates :first_name, presence: true, length: { maximum: 255, too_long: "max 255 characters"}
  validates :last_name, presence: true, length: { maximum: 255, too_long: "max 255 characters"}
  validates :email, presence: true, length: { maximum: 255, too_long: "max 255 characters"}, format: { with: /@/,
  message: "Must have @ symobol" }, format: {with: URI::MailTo::EMAIL_REGEXP}
# Find Unique email with Regex


  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
