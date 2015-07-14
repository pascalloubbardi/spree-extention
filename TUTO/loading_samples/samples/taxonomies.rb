taxonomies = [
  { name: "Categories" },
  { name: "Marques" }
]

taxonomies.each do |taxonomy_attrs|
  Spree::Taxonomy.create!(taxonomy_attrs)
end
