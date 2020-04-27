class MyValidator < ActiveModel::Validator
  def validate(record)
    unless !record.mens_apparel && !record.womens_apparel
      record.errors[:mens_apparel] << 'Need at least one type of apparel'
    end
  end
end


class Store < ActiveRecord::Base  
  has_many :employees  

  validate :must_sell_apparel
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, :numericality => {:greater_than_or_equal_to => 0}
  
  def must_sell_apparel
    if !:mens_apparel && !:womens_apparel
      errors.add(:mens_apparel, "Must sell atleast 1 type of apparel.")
      errors.add(:womens_apparel, "Must sell atleast 1 type of apparel.")
    end
  end
  
end

