
class Product < ActiveRecord::Base
  default_scope :order => 'name'
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :name, :ingredients, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :name, :uniqueness => true
  validates :image_url, :format=> {
  :with  =>%r{\.(gif|jpg|png)$}i ,
  :message => 'must be a URL for GIF. JPG, or PNG image.'
  }

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

end
