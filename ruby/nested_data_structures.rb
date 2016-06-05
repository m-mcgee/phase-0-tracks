#Guitars hash 
#-Brands hash
#--models/price hash
#--colors array
#--famous players/band hash
#--coolness rating


guitars = {
	gibson: {
		model_price: {
			les_paul: 1500,
			sg: 800,
			es_335: 3500, 
		},
		colors: [
			"black",
			"yellow",
			"blue"
		],
		famous_artists: {
			dave_grohl: "Foo Fighters", 
			angus_young: "ACDC", 
			billie_joe_armstrong: "Green Day"
		},
		coolness_rating: 10,
	},
	fender: {
		model_price: {
			stratocaster: 700,
			telecaster: 500,
			jaguar: 1200,
		},
		colors: [
			"sunburst",
			"red",
			"black"
		],
		famous_artists: {
			johnny_marr: "The Smiths",
			kurt_cobain: "Nirvana", 
			matt_skiba: "Alkaline Trio"
		},
		coolness_rating: 9,
	},
	jackson: {
		model_price: {
			rhoads: 700,
			kelly: 800,
			warrior: 1000,
		},
		colors: [
			"black",
			"silver"
		],
		famous_artists: {
			randy_rhoads: "Ozzy Osbourne",
			scott_ian: "Anthrax"
		},
		coolness_rating: 4,
	}
} 

puts "coolness rating for fender"
p guitars[:fender][:coolness_rating]

puts "first color offered by gibson"
p guitars[:gibson][:colors][0]

puts "all colors offered by fender"
p guitars[:fender][:colors]

puts "famous artists that play fender"
p guitars[:fender][:famous_artists]

puts "price of gibson es 335"
p guitars[:gibson][:model_price][:es_335]
