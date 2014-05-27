class Product < ActiveRecord::Base

	Current_sales_tax = .08
	def self.Current_sales_tax
		return Current_sales_tax * 100
	end

	def find_tax_n_total(product)

		product.unit_price

end