class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 10, less_than: 200}
  validates :store, presence: true

end
