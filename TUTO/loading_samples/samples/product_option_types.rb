Spree::Sample.load_sample("products")

quantite = Spree::OptionType.find_by_presentation!("Qantite")
dosage = Spree::OptionType.find_by_presentation!("Dosage")

ror_baseball_jersey = Spree::Product.find_by_name!("Calcium Marin 100 gélules")
ror_baseball_jersey.option_types = [quantite, dosage]
ror_baseball_jersey.save!

spree_baseball_jersey = Spree::Product.find_by_name!("Calcium Marin 40 gélules")
spree_baseball_jersey.option_types = [quantite, dosage]
spree_baseball_jersey.save!

spree_baseball_jersey = Spree::Product.find_by_name!("Curcuma Articulations 60 comprimés")
spree_baseball_jersey.option_types = [quantite, dosage]
spree_baseball_jersey.save!
