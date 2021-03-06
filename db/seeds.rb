# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garagiste.destroy_all
Search.destroy_all

garagistes = Garagiste.create!( [ {name: 'Garlaban Automobile', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', taux_mo: 60, taux_piece: 1},
              {name: 'Chivallier', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', taux_mo: 70, taux_piece: 1},
              {name: 'BR Auto', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', taux_mo: 60, taux_piece: 1},
              {name: 'MD Muscatelle', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', taux_mo: 60, taux_piece: 1},
              {name: 'DPS Auto', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', taux_mo: 60, taux_piece: 1}
              ])

searches = Search.create!( [ {name: 'Garlaban Automobile', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', description: 'Vehicule de remplacement', intervention: "vidange", immatriculation: "AA-343-SK"},
              {name: 'Chivallier', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', description: 'Vehicule de remplacement', intervention: "vidange", immatriculation: "AA-343-SK"},
              {name: 'BR Auto', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', description: 'Vehicule de remplacement', intervention: "revision", immatriculation: "AA-343-SK"},
              {name: 'MD Muscatelle', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', description: 'Vehicule de remplacement', intervention: "vidange", immatriculation: "AA-343-SK"},
              {name: 'DPS Auto', ville: 'Aubagne', code_postal: 13400, categorie: 'Revision', description: 'Vehicule de remplacement', intervention: "revision", immatriculation: "AA-343-SK"}
              ])


#garagistes.each { |params| Garagiste.create!(params) }
#searches.each { |params| Search.create!(params) }

