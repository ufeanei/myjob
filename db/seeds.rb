# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	fylkes= Fylke.create([
	{name: 'Akerhus' },
	{name: 'Aust-Agder' },
	{name: 'Buskerud' },
	{name: 'Finnmark' },
	{name: 'Hedmark' },
	{name: 'Hordaland' },
	{name: 'Møre og Romsdal' },
	{name: 'Nordland' },
	{name: 'Nord-Trondelag' },
	{name: 'Oppland' },
	{name: 'Oslo' },
	{name: 'Rogaland' },
	{name: 'Sogn og Fjordanne' },
	{name: 'Sor-Trondelag' },
	{name: 'Telemark' },
	{name: 'Troms' },
	{name: 'Vest-Agder' },
	{name: 'Vestfold' },
	{name: 'Østfold' }
	])


	kommunes= Kommune.create([

  {name: 'Asker', fylke_id: 1 }, 
  {name: 'Aurskog', fylke_id: 1 }, 
  {name: 'Høland', fylke_id: 1 },
  {name: 'Bærum', fylke_id: 1 }, 
  {name: 'Eidsvoll', fylke_id: 1 }, 
  {name: 'Enebakk', fylke_id: 1 }, 
  {name: 'Fet', fylke_id: 1 }, 
  {name: 'Frogn-Drøbak', fylke_id: 1 }, 
  {name: 'Gjerdrum', fylke_id: 1 },
  {name: 'Hole', fylke_id: 1 }, 
  {name: 'Hurdal', fylke_id: 1 }, 
  {name: 'ørenskog', fylke_id: 1 }, 
  {name: 'Nannestad', fylke_id: 1 },
  {name: 'Nes', fylke_id: 1 }, 
  {name: 'Nesodden', fylke_id: 1 }, 
  {name: 'Nittedal', fylke_id: 1 }, 
  {name: 'Oppegård', fylke_id: 1 }, 
  {name: 'Rælingen', fylke_id: 1 }, 
  {name: 'Skedsmo', fylke_id: 1 }, 
  {name: 'Ski', fylke_id: 1 }, 
  {name: 'Sørum', fylke_id: 1 }, 
  {name: 'Ullensaker', fylke_id: 1 }, 
  {name: 'Vestby-Son', fylke_id: 1 }, 
  {name: 'Ås', fylke_id: 1 } 

  ])


	kommunes = Kommune.create([
  {name: 'Arendal', fylke_id: 2 }, 
  {name: 'Birkenes', fylke_id: 2 }, 
  {name: 'Bygland', fylke_id: 2 },  
  {name: 'Bykle', fylke_id: 2 }, 
  {name: 'Evje og Hornnes', fylke_id: 2 }, 
  {name: 'Froland', fylke_id: 2 }, 
  {name: 'Gjerstad', fylke_id: 2 }, 
  {name: 'Grimstad', fylke_id: 2 }, 
  {name: 'Iveland', fylke_id: 2 }, 
  {name: 'Lillesand', fylke_id: 2 },  
  {name: 'Risør', fylke_id: 2 },   
  {name: 'Tvedestrand', fylke_id: 2 }, 
  {name: 'Valle', fylke_id: 2 }, 
  {name: 'Vegårshei', fylke_id: 2 }, 
  {name: 'Åmli', fylke_id: 2 } 

		])

kommunes = Kommune.create([
  {name: 'Bærum', fylke_id: 3 }, 
  {name: 'Drammen', fylke_id: 3 }, 
  {name: 'Flesberg', fylke_id: 3 }, 
  {name: 'Flå', fylke_id: 3 }, 
  {name: 'Gol', fylke_id: 3 }, 
  {name: 'Hemsedal', fylke_id: 3 }, 
  {name: 'Hol', fylke_id: 3 }, 
  {name: 'Hole', fylke_id: 3 }, 
  {name: 'Hurum', fylke_id: 3 },
  {name: 'Kongsberg', fylke_id: 3 },
  {name: 'Krødsherad', fylke_id: 3 }, 
  {name: 'Lier', fylke_id: 3 }, 
  {name: 'Modum', fylke_id: 3 }, 
  {name: 'Nedre Eiker', fylke_id: 3 }, 
  {name: 'Nes', fylke_id: 3 }, 
  {name: 'Nore og Uvda', fylke_id: 3 },
  {name: 'Ringerike', fylke_id: 3 },
  {name: 'Rollag', fylke_id: 3 }, 
  {name: 'Røyken', fylke_id: 3 }, 
  {name: 'Sigdal', fylke_id: 3 }, 
  {name: 'Ål i Hallingdal', fylke_id: 3 }, 
  {name: 'Øvre Eiker', fylke_id: 3 }
  ])


kommunes= Kommune.create([
  {name: 'Alta', fylke_id: 4 }, 
  {name: 'Berlevåg', fylke_id: 4 }, 
  {name: 'Båtsfjord', fylke_id: 4 }, 
  {name: 'Gamvik', fylke_id: 4 }, 
  {name: 'Hammerfest', fylke_id: 4 }, 
  {name: 'Hasvik', fylke_id: 4 }, 
  {name: 'Karasjok', fylke_id: 4 }, 
  {name: 'Kautokeino', fylke_id: 4 }, 
  {name: 'Kvalsund', fylke_id: 4 }, 
  {name: 'Lebesby', fylke_id: 4 }, 
  {name: 'Loppa', fylke_id: 4 }, 
  {name: 'Måsøy', fylke_id: 4 }, 
  {name: 'Nesseby', fylke_id: 4 }, 
  {name: 'Nordkapp', fylke_id: 4 }, 
  {name: 'Porsanger', fylke_id: 4 }, 
  {name: 'Sør-Varanger', fylke_id: 4 }, 
  {name: 'Tana', fylke_id: 4 }, 
  {name: 'Vadsø', fylke_id: 4 }, 
  {name: 'Vardø', fylke_id: 4 } 


	])

kommunes= Kommune.create([
  {name: 'Alvdal', fylke_id: 5 }, 
  {name: 'Eidskog', fylke_id: 5 }, 
  {name: 'Elverum', fylke_id: 5 }, 
  {name: 'Engerdal', fylke_id: 5 }, 
  {name: 'Folldal', fylke_id: 5 }, 
  {name: 'Grue', fylke_id: 5 }, 
  {name: 'Hamar', fylke_id: 5 },
  {name: 'Kongsvinger', fylke_id: 5 }, 
  {name: 'Løten', fylke_id: 5 }, 
  {name: 'Nord-Odal', fylke_id: 5 },
  {name: 'Os', fylke_id: 5 }, 
  {name: 'Rendalen', fylke_id: 5 }, 
  {name: 'Ringsaker', fylke_id: 5 }, 
  {name: 'Stange', fylke_id: 5 }, 
  {name: 'Stor-Elvdal', fylke_id: 5 },
  {name: 'Sør-Odal', fylke_id: 5 }, 
  {name: 'Tolga', fylke_id: 5 }, 
  {name: 'Trysil', fylke_id: 5 }, 
  {name: 'Tynset', fylke_id: 5 },
  {name: 'Våler', fylke_id: 5 }, 
  {name: 'Åmot', fylke_id: 5 }, 
  {name: 'Åsnes', fylke_id: 5 }
  ]} 

  kommunes = Kommune.create([
  {name: 'Bømlo', fylke_id: 6 },  
  {name: 'Eidfjord', fylke_id: 6 },  
  {name: 'Etne', fylke_id: 6 }, 
  {name: 'Fedje', fylke_id: 6 }, 
  {name: 'Fitjar', fylke_id: 6 }, 
  {name: 'Fjell', fylke_id: 6 }, 
  {name: 'Fusa', fylke_id: 6 }, 
  {name: 'Granvin', fylke_id: 6 }, 
  {name: 'Jondal', fylke_id: 6 }, 
  {name: 'Kvam', fylke_id: 6 },  
  {name: 'Kvinnherad', fylke_id: 6 }, 
  {name: 'Lindås', fylke_id: 6 }, 
  {name: 'Masfjorden', fylke_id: 6 }, 
  {name: 'Meland', fylke_id: 6 }, 
  {name: 'Modalen', fylke_id: 6 }, 
  {name: 'Odda', fylke_id: 6 }, 
  {name: 'Os', fylke_id: 6 },  
  {name: 'Osterøy', fylke_id: 6 }, 
  {name: 'Radøy', fylke_id: 6 }, 
  {name: 'Samnanger', fylke_id: 6 },   
  {name: 'Stord', fylke_id: 6 },   
  {name: 'Sund', fylke_id: 6 }, 
  {name: 'Sveio', fylke_id: 6 }, 
  {name: 'Tysnes', fylke_id: 6 }, 
  {name: 'Ullensvang', fylke_id: 6 },   
  {name: 'Ulvik', fylke_id: 6 },   
  {name: 'Vaksdal', fylke_id: 6 }, 
  {name: 'Voss', fylke_id: 6 }, 
  {name: 'Øygarden', fylke_id: 6 } 

  	])

 kommunes = Kommune.create([
{name: 'Oslo', fylke_id: 7 }
])


 kommunes = Kommune.create([
  {name: 'Aukra', fylke_id: 8 },
  {name: 'Aure', fylke_id: 8 }, 
  {name: 'Averøy', fylke_id: 8 }, 
  {name: 'Eide', fylke_id: 8 }, 
  {name: 'Fræna', fylke_id: 8 }, 
  {name: 'Giske', fylke_id: 8 }, 
  {name: 'Gjemnes', fylke_id: 8 }, 
  {name: 'Halsa', fylke_id: 8 }, 
  {name: 'Haram', fylke_id: 8 }, 
  {name: 'Hareid', fylke_id: 8 }, 
  {name: 'Herøy', fylke_id: 8 },
  {name: 'Kristiansund', fylke_id: 8 }, 
  {name: 'Midsund', fylke_id: 8 }, 
  {name: 'Molde', fylke_id: 8 }, 
  {name: 'Nesset', fylke_id: 8 }, 
  {name: 'Norddal', fylke_id: 8 }, 
  {name: 'Rauma', fylke_id: 8 }, 
  {name: 'Rindal', fylke_id: 8 }, 
  {name: 'Sande', fylke_id: 8 },  
  {name: 'Sandøy', fylke_id: 8 }, 
  {name: 'Skodje', fylke_id: 8 }, 
  {name: 'Smøla', fylke_id: 8 }, 
  {name: 'Stordal', fylke_id: 8 }, 
  {name: 'Stranda', fylke_id: 8 }, 
  {name: 'Sula', fylke_id: 8 }, 
  {name: 'Sunndal', fylke_id: 8 }, 
  {name: 'Surnadal', fylke_id: 8 }, 
  {name: 'Sykkylven', fylke_id: 8 }, 
  {name: 'Tingvoll', fylke_id: 8 }, 
  {name: 'Ulstein', fylke_id: 8 }, 
  {name: 'Vanylven', fylke_id: 8 }, 
  {name: 'Vestnes', fylke_id: 8 }, 
  {name: 'Volda', fylke_id: 8 }, 
  {name: 'Ålesund', fylke_id: 8 }, 
  {name: 'Ørskog', fylke_id: 8 }, 
  {name: 'Ørsta', fylke_id: 8 } 

 	])


kommunes = Kommune.create([
  {name: 'Flatanger', fylke_id: 9 }, 
  {name: 'Fosnes', fylke_id: 9 }, 
  {name: 'Frosta', fylke_id: 9 }, 
  {name: 'Grong', fylke_id: 9 }, 
  {name: 'Høylandet', fylke_id: 9 }, 
  {name: 'Inderøy', fylke_id: 9 }, 
  {name: 'Leka', fylke_id: 9 }, 
  {name: 'Leksvik', fylke_id: 9 }, 
  {name: 'Levanger', fylke_id: 9 }, 
  {name: 'Lierne', fylke_id: 9 }, 
  {name: 'Meråker', fylke_id: 9 }, 
  {name: 'Namdalseid', fylke_id: 9 }, 
  {name: 'Namsos', fylke_id: 9 }, 
  {name: 'Namsskogan', fylke_id: 9 }, 
  {name: 'Nærøy', fylke_id: 9 }, 
  {name: 'Overhalla', fylke_id: 9 }, 
  {name: 'Røyrvik', fylke_id: 9 }, 
  {name: 'Snåsa', fylke_id: 9 }, 
  {name: 'Steinkjer', fylke_id: 9 }, 
  {name: 'Stjørdal', fylke_id: 9 }, 
  {name: 'Verdal', fylke_id: 9 }, 
  {name: 'Verran', fylke_id: 9 }, 
  {name: 'Vikna', fylke_id: 9 }

	])


kommunes = Kommune.create([
  {name: 'Alstahaug', fylke_id: 10 },  
  {name: 'Andøy', fylke_id: 10 },  
  {name: 'Ballangen', fylke_id: 10 },  
  {name: 'Beiarn', fylke_id: 10 },  
  {name: 'Bindal', fylke_id: 10 },  
  {name: 'Bodø', fylke_id: 10 },  
  {name: 'Brønnøy', fylke_id: 10 },  
  {name: 'Bø', fylke_id: 10 },  
  {name: 'Dønna', fylke_id: 10 },  
  {name: 'Evenes', fylke_id: 10 },  
  {name: 'Fauske', fylke_id: 10 },  
  {name: 'Flakstad', fylke_id: 10 },  
  {name: 'Gildeskål', fylke_id: 10 },  
  {name: 'Grane', fylke_id: 10 },  
  {name: 'Hadsel', fylke_id: 10 },  
  {name: 'Hamarøy', fylke_id: 10 },  
  {name: 'Hattfjelldal', fylke_id: 10 },  
  {name: 'Hemnes', fylke_id: 10 },  
  {name: 'Herøy', fylke_id: 10 },  
  {name: 'Leirfjord', fylke_id: 10 },  
  {name: 'Lurøy', fylke_id: 10 },  
  {name: 'Lødingen', fylke_id: 10 },  
  {name: 'Meløy', fylke_id: 10 },  
  {name: 'Moskenes', fylke_id: 10 },  
  {name: 'Narvik', fylke_id: 10 },  
  {name: 'Nesna', fylke_id: 10 },  
  {name: 'Rana', fylke_id: 10 },  
  {name: 'Rødøy', fylke_id: 10 },  
  {name: 'Røst', fylke_id: 10 },  
  {name: 'Saltdal', fylke_id: 10 },  
  {name: 'Sortland', fylke_id: 10 },  
  {name: 'Steigen', fylke_id: 10 },  
  {name: 'Sømna', fylke_id: 10 },  
  {name: 'Sørfold', fylke_id: 10 },  
  {name: 'Tjeldsund', fylke_id: 10 },  
  {name: 'Træna', fylke_id: 10 },  
  {name: 'Tysfjord', fylke_id: 10 },  
  {name: 'Vefsn', fylke_id: 10 },  
  {name: 'Vega', fylke_id: 10 },  
  {name: 'Vestvågøy', fylke_id: 10 },  
  {name: 'Vevelstad', fylke_id: 10 },  
  {name: 'Vågan', fylke_id: 10 },  
  {name: 'Værøy', fylke_id: 10 },  
  {name: 'Øksnes', fylke_id: 10 }  

	])

kommunes = Kommune.create([
  {name: 'Dovre', fylke_id: 11 },  
  {name: 'Etnedal', fylke_id: 11 },  
  {name: 'Gausdal', fylke_id: 11 },  
  {name: 'Gjøvik', fylke_id: 11 },  
  {name: 'Gran', fylke_id: 11 },  
  {name: 'Jevnaker', fylke_id: 11 },  
  {name: 'Lesja', fylke_id: 11 }, 
  {name: 'Lillehammer', fylke_id: 11 },  
  {name: 'Lom', fylke_id: 11 },  
  {name: 'Lunner', fylke_id: 11 },  
  {name: 'Nord-Aurdal', fylke_id: 11 },  
  {name: 'Nord-Fron', fylke_id: 11 },  
  {name: 'Nordre Land', fylke_id: 11 }, 
  {name: 'Ringebu', fylke_id: 11 },  
  {name: 'Sel', fylke_id: 11 },  
  {name: 'Skjåk', fylke_id: 11 },  
  {name: 'Søndre Land', fylke_id: 11 },  
  {name: 'Sør-Aurdal', fylke_id: 11 },  
  {name: 'Sør-Fron', fylke_id: 11 },  
  {name: 'Vang', fylke_id: 11 },  
  {name: 'Vestre Slidre', fylke_id: 11 },  
  {name: 'Vestre Toten', fylke_id: 11 },  
  {name: 'Vågå', fylke_id: 11 },  
  {name: 'Østre Toten', fylke_id: 11 },  
  {name: 'Øyer', fylke_id: 11 },  
  {name: 'Øystre Slidre', fylke_id: 11 }  

	])




