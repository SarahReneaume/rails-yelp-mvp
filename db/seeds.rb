# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:  "french"

  },
  {
    name:         "La Truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:  "french"
  },
  {
    name:         "Le Pré",
    address:      "112 route de Suresnes 75016 Paris",
    category:  "belgian"
  },
  {
    name:         "Babalou",
    address:      "23 rue des Abbesses 75018 Paris",
    category:  "italian"
  },
  {
    name:         "Le Dragon Rouge",
    address:      "14 rue des Frères 75013 Paris",
    category:  "chinese"
  },
  {
    name:         "Matsuko",
    address:      "rue Sainte-Anne 75009 Paris",
    category:  "japanese"
  },
  {
    name:         "Le Monteverdi",
    address:      "76 rue Condorcet 75009 Paris",
    category:  "italian"
  },

]

restaurants_attributes.each { |params| Restaurant.create!(params) }
