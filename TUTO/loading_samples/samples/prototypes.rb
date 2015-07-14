prototypes = [
  {
    :name => "Articulation",
    :properties => ["Laboratoir", "Origine", "Forme", "Gamme"]
  }
]

prototypes.each do |prototype_attrs|
  prototype = Spree::Prototype.create!(:name => prototype_attrs[:name])
  prototype_attrs[:properties].each do |property|
    prototype.properties << Spree::Property.where(name: property).first
  end
end
