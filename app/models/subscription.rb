class Subscription < ApplicationRecord
	validates :payment_date, presence: true
	validates :name, presence: true
	validates :amount, presence: true

	before_save :assign_values

  private
    def assign_values
      self.uuid = SecureRandom.uuid
      date = self.payment_date
      self.month = Date::MONTHNAMES.index(date.strftime("%B"))
      self.year = date.year
    end
end
