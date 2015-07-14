Spree::Sample.load_sample("tax_categories")
Spree::Sample.load_sample("shipping_categories")

complementalimentaire = Spree::TaxCategory.find_by_name!("Complement Alimentaire")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  #description: FFaker::Lorem.paragraph,
  available_on: Time.zone.now
}

products = [
  {
    :name => "Articulations Infusion AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 15.99,
    :eur_price => 14,
    :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  },
  {
    :name => "Bain Aromatique Sport 100ml BIO",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  },
  {
    :name => "Calcium Marin 100 gélules",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  },
  {
    :name => "Calcium Marin 40 gélules",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  },
  {
    :name => "Curcuma Articulations 60 comprimés",
    :shipping_category => shipping_category,
    :tax_category => complementalimentaire,
    :price => 19.99,
    :eur_price => 16,
    :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  },
  {
    :name => "Curcuma Extrait Fluide 300 ml AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  }
]

products.each do |product_attrs|
  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "EUR"
  product.reload
  product.price = eur_price
  product.shipping_category = default_shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"
