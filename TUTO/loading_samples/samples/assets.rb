Spree::Sample.load_sample("products")
Spree::Sample.load_sample("variants")

products = {}
products[:articulations_infusion_ab] = Spree::Product.find_by_name!("Articulations Infusion AB") 
products[:bain_aromatique_sport] = Spree::Product.find_by_name!("Bain Aromatique Sport 100ml BIO")
products[:calcium_marin_100] = Spree::Product.find_by_name!("Calcium Marin 100 gélules")
products[:calcium_marin_40] = Spree::Product.find_by_name!("Calcium Marin 40 gélules")
products[:curcuma_articulations_60] = Spree::Product.find_by_name!("Curcuma Articulations 60 comprimés")
products[:curcuma_extrait_fluide_300] = Spree::Product.find_by_name!("Curcuma Extrait Fluide 300 ml AB")

def image(name, type="jpeg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

images = {
  products[:articulations_infusion_ab].master => [
    {
      :attachment => image("ArticulationAB")
    }
  ],
  products[:bain_aromatique_sport].master => [
    {
      :attachment => image("BASportBIO")
    }
  ],
   products[:calcium_marin_100].master => [
    {
      :attachment => image("CalciumMarin100gel")
    }
  ],
   products[:calcium_marin_40].master => [
    {
      :attachment => image("CalciumMarin40gel")
    }
  ],
   products[:curcuma_articulations_60].master => [
    {
      :attachment => image("CurcumaArticulationsAB")
    }
  ],
   products[:curcuma_extrait_fluide_300].master => [
    {
      :attachment => image("CurcumaExtraitFluideAB")
    }
  ],
}


products[:calcium_marin_100].variants.each do |variant|
  quantite = variant.option_value("complement_quantite").downcase
  main_image = image("CalciumMarin100gel_#{quantite}", "png")
  variant.images.create!(:attachment => main_image)
  back_image = image("CalciumMarin100gel_back_#{quantite}", "png")
  if back_image
    variant.images.create!(:attachment => back_image)
  end
end

images.each do |variant, attachments|
  puts "Loading images for #{variant.product.name}"
  attachments.each do |attachment|
  variant.images.create!(attachment)
  end
end
