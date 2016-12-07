class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :apparel_present

  before_destroy :make_sure_store_empty

  def apparel_present
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, 'or womens apparel (at least one) must be true')
      errors.add(:womens_apparel, 'or mens apparel (at least one) must be true')
    end
  end

  private
  def make_sure_store_empty
    unless employees.empty?
      errors[:base] << "Cannot destroy store when non-empty"
      throw :abort
    end
  end


end
