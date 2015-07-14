Spree::Sample.load_sample("option_values")
Spree::Sample.load_sample("products")

  calcium_marin_100 = Spree::Product.find_by_name!("Calcium Marin 100 gélules")
  calcium_marin_40 = Spree::Product.find_by_name!("Calcium Marin 40 gélules")
  bain_aromatique_sport = Spree::Product.find_by_name!("Bain Aromatique Sport 100ml BIO")
  articulations_infusion_ab = Spree::Product.find_by_name!("Articulations Infusion AB")
  curcuma_articulations_60 = Spree::Product.find_by_name!("Curcuma Articulations 60 comprimés")
  curcuma_extrait_fluide_300 = Spree::Product.find_by_name!("Curcuma Extrait Fluide 300 ml AB")

  gelule1 = Spree::OptionValue.where(name: "gelule1").first
  gelule2 = Spree::OptionValue.where(name: "gelule2").first
  gelule3 = Spree::OptionValue.where(name: "gelule3").first

  dosage1 = Spree::OptionValue.where(name: "dosage1").first
  dosage2 = Spree::OptionValue.where(name: "dosage2").first
  dosage3 = Spree::OptionValue.where(name: "dosage3").first

variants = [
  {
    :product => calcium_marin_100,
    :option_values => [gelule1, dosage1],
    :sku => "ROR-00001",
    :cost_price => 17
  },
  {
    :product => calcium_marin_100,
    :option_values => [gelule2, dosage2],
    :sku => "ROR-00002",
    :cost_price => 17
  },
  {
    :product => calcium_marin_100,
    :option_values => [gelule3, dosage3],
    :sku => "ROR-00003",
    :cost_price => 17
  },
  {
    :product => calcium_marin_40,
    :option_values => [gelule1, dosage1],
    :sku => "ROR-00004",
    :cost_price => 17
  },
  {
    :product => calcium_marin_40,
    :option_values => [gelule2, dosage2],
    :sku => "ROR-00005",
    :cost_price => 17
  },
  {
    :product => calcium_marin_40,
    :option_values => [gelule3, dosage3],
    :sku => "ROR-00006",
    :cost_price => 17
  },
  {
    :product => curcuma_articulations_60,
    :option_values => [gelule1, dosage1],
    :sku => "ROR-00007",
    :cost_price => 17
  },
  {
    :product => curcuma_articulations_60,
    :option_values => [gelule2, dosage2],
    :sku => "ROR-00008",
    :cost_price => 17
  },
  {
    :product => curcuma_articulations_60,
    :option_values => [gelule3, dosage3],
    :sku => "ROR-00009",
    :cost_price => 17
  },
]

masters = {
  calcium_marin_100 => {
    :sku => "ROR-001",
    :cost_price => 17,
  },
  calcium_marin_40 => {
    :sku => "ROR-00011",
    :cost_price => 17
  },
  bain_aromatique_sport => {
    :sku => "ROR-00012",
    :cost_price => 21
  },
  articulations_infusion_ab => {
    :sku => "ROR-00013",
    :cost_price => 17
  },
  curcuma_articulations_60 => {
    :sku => "ROR-00014",
    :cost_price => 11
  },
  curcuma_extrait_fluide_300 => {
    :sku => "ROR-00015",
    :cost_price => 17
  }
}

Spree::Variant.create!(variants)

masters.each do |product, variant_attrs|
  product.master.update_attributes!(variant_attrs)
end
