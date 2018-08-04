Restaurant.destroy_all

puts 'Creating BENFICA fans restaurants...'

Restaurant.create!({
  name: "Catedral",
  address: "Av. Eusésio Ferreira da Silva, Lisboa, Portugal"
})
Restaurant.create!({
  name: "Maracanã",
  address: "Av. Fontes Pereira Melo, Lisboa, Portugal"
})
puts 'Finished!'
