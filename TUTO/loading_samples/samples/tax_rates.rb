north_america = Spree::Zone.find_by_name!("North America")
complementalimentaire = Spree::TaxCategory.find_by_name!("Complement Alimentaire")
tax_rate = Spree::TaxRate.create(
  :name => "North America",
  :zone => north_america, 
  :amount => 0.05,
  :tax_category => complementalimentaire)
tax_rate.calculator = Spree::Calculator::DefaultTax.create!
tax_rate.save!
