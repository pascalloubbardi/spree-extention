Spree::Sample.load_sample("option_types")

complement_quantite = Spree::OptionType.find_by_presentation!("Qantite")
complement_dosage = Spree::OptionType.find_by_presentation!("Dosage")

Spree::OptionValue.create!([
  {
    :name => "gelule1",
    :presentation => "40 gelules",
    :position => 1,
    :option_type => complement_quantite
  },
  {
    :name => "gelule2",
    :presentation => "60 gelules",
    :position => 2,
    :option_type => complement_quantite
  },
  {
    :name => "gelule3",
    :presentation => "100 gelules",
    :position => 3,
    :option_type => complement_quantite
  },
  {
    :name => "dosage1",
    :presentation => "100 mg",
    :position => 1,
    :option_type => complement_dosage,
  },
  {
    :name => "dosage2",
    :presentation => "300 mg",
    :position => 2,
    :option_type => complement_dosage,
  },
  {
    :name => "dosage3",
    :presentation => "600 mg",
    :position => 3,
    :option_type => complement_dosage
  }
])
