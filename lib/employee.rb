class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 10, less_than: 200}
  validates :store, presence: true

  before_create :set_password

  private
    def set_password
      self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
    end


end
