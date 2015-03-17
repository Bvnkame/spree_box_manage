module Spree
  Product.class_eval do
    has_many :boxes , through: :boxdetails, :class_name => "Bm::Box"
    has_many :boxdetails, :class_name => "Bm::BoxDetail", foreign_key: 'spree_product_id'
  end
end