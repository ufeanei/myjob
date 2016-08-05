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
	{name: 'Nord-Trondelag' },
	{name: 'Nordland' },
	{name: 'Oppland' },
	{name: 'Oslo' },
	{name: 'Rogaland' },
	{name: 'Sogn og Fjordanne' },
  {name: 'Svalbard' },
  {name: 'Sør-Trondelag' },
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


kommunes = Kommune.create([
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
  ]) 

  kommunes = Kommune.create([
  { name: 'Askøy', fylke_id: 6 },
  { name: 'Austevoll', fylke_id: 6 }, 
  { name: 'Austrheim', fylke_id: 6 }, 
  { name: 'Bergen', fylke_id: 6 }, 

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
{name: 'Oslo', fylke_id: 11 }
])


 kommunes = Kommune.create([
  {name: 'Aukra', fylke_id: 7 },
  {name: 'Aure', fylke_id: 7 }, 
  {name: 'Averøy', fylke_id: 7 }, 
  {name: 'Eide', fylke_id: 7 }, 
  {name: 'Fræna', fylke_id: 7 }, 
  {name: 'Giske', fylke_id: 7 }, 
  {name: 'Gjemnes', fylke_id: 7 }, 
  {name: 'Halsa', fylke_id: 7 }, 
  {name: 'Haram', fylke_id: 7 }, 
  {name: 'Hareid', fylke_id: 7 }, 
  {name: 'Herøy', fylke_id: 7 },
  {name: 'Kristiansund', fylke_id: 7 }, 
  {name: 'Midsund', fylke_id: 7 }, 
  {name: 'Molde', fylke_id: 7 }, 
  {name: 'Nesset', fylke_id: 7 }, 
  {name: 'Norddal', fylke_id: 7 }, 
  {name: 'Rauma', fylke_id: 7 }, 
  {name: 'Rindal', fylke_id: 7 }, 
  {name: 'Sande', fylke_id: 7 },  
  {name: 'Sandøy', fylke_id: 7 }, 
  {name: 'Skodje', fylke_id: 7 }, 
  {name: 'Smøla', fylke_id: 7 }, 
  {name: 'Stordal', fylke_id: 7 }, 
  {name: 'Stranda', fylke_id: 7 }, 
  {name: 'Sula', fylke_id: 7 }, 
  {name: 'Sunndal', fylke_id: 7 }, 
  {name: 'Surnadal', fylke_id: 7 }, 
  {name: 'Sykkylven', fylke_id: 7 }, 
  {name: 'Tingvoll', fylke_id: 7 }, 
  {name: 'Ulstein', fylke_id: 7 }, 
  {name: 'Vanylven', fylke_id: 7 }, 
  {name: 'Vestnes', fylke_id: 7 }, 
  {name: 'Volda', fylke_id: 7 }, 
  {name: 'Ålesund', fylke_id: 7 }, 
  {name: 'Ørskog', fylke_id: 7}, 
  {name: 'Ørsta', fylke_id: 7 } 

 	])


kommunes = Kommune.create([
  {name: 'Flatanger', fylke_id: 8 }, 
  {name: 'Fosnes', fylke_id: 8 }, 
  {name: 'Frosta', fylke_id: 8 }, 
  {name: 'Grong', fylke_id: 8 }, 
  {name: 'Høylandet', fylke_id: 8 }, 
  {name: 'Inderøy', fylke_id: 8 }, 
  {name: 'Leka', fylke_id: 8 }, 
  {name: 'Leksvik', fylke_id: 8 }, 
  {name: 'Levanger', fylke_id: 8 }, 
  {name: 'Lierne', fylke_id: 8 }, 
  {name: 'Meråker', fylke_id: 8 }, 
  {name: 'Namdalseid', fylke_id: 8 }, 
  {name: 'Namsos', fylke_id: 8 }, 
  {name: 'Namsskogan', fylke_id: 8 }, 
  {name: 'Nærøy', fylke_id: 8 }, 
  {name: 'Overhalla', fylke_id: 8 }, 
  {name: 'Røyrvik', fylke_id: 8 }, 
  {name: 'Snåsa', fylke_id: 8 }, 
  {name: 'Steinkjer', fylke_id: 8 }, 
  {name: 'Stjørdal', fylke_id: 8 }, 
  {name: 'Verdal', fylke_id: 8 }, 
  {name: 'Verran', fylke_id: 8 }, 
  {name: 'Vikna', fylke_id: 8 }

	])


kommunes = Kommune.create([
  {name: 'Alstahaug', fylke_id: 9 },  
  {name: 'Andøy', fylke_id: 9 },  
  {name: 'Ballangen', fylke_id: 9 },  
  {name: 'Beiarn', fylke_id: 9 },  
  {name: 'Bindal', fylke_id: 9 },  
  {name: 'Bodø', fylke_id: 9 },  
  {name: 'Brønnøy', fylke_id: 9 },  
  {name: 'Bø', fylke_id: 9 },  
  {name: 'Dønna', fylke_id: 9 },  
  {name: 'Evenes', fylke_id: 9 },  
  {name: 'Fauske', fylke_id: 9 },  
  {name: 'Flakstad', fylke_id: 9 },  
  {name: 'Gildeskål', fylke_id: 9 },  
  {name: 'Grane', fylke_id: 9 },  
  {name: 'Hadsel', fylke_id: 9 },  
  {name: 'Hamarøy', fylke_id: 9 },  
  {name: 'Hattfjelldal', fylke_id: 9 },  
  {name: 'Hemnes', fylke_id: 9 },  
  {name: 'Herøy', fylke_id: 9 },  
  {name: 'Leirfjord', fylke_id: 9 },  
  {name: 'Lurøy', fylke_id: 9 },  
  {name: 'Lødingen', fylke_id: 9 },  
  {name: 'Meløy', fylke_id: 9 },  
  {name: 'Moskenes', fylke_id: 9 },  
  {name: 'Narvik', fylke_id: 9 },  
  {name: 'Nesna', fylke_id: 9 },  
  {name: 'Rana', fylke_id: 9 },  
  {name: 'Rødøy', fylke_id: 9 },  
  {name: 'Røst', fylke_id: 9 },  
  {name: 'Saltdal', fylke_id: 9 },  
  {name: 'Sortland', fylke_id: 9 },  
  {name: 'Steigen', fylke_id: 9 },  
  {name: 'Sømna', fylke_id: 9 },  
  {name: 'Sørfold', fylke_id: 9 },  
  {name: 'Tjeldsund', fylke_id: 9 },  
  {name: 'Træna', fylke_id: 9 },  
  {name: 'Tysfjord', fylke_id: 9 },  
  {name: 'Vefsn', fylke_id: 9 },  
  {name: 'Vega', fylke_id: 9 },  
  {name: 'Vestvågøy', fylke_id: 9 },  
  {name: 'Vevelstad', fylke_id: 9 },  
  {name: 'Vågan', fylke_id: 9 },  
  {name: 'Værøy', fylke_id: 9 },  
  {name: 'Øksnes', fylke_id: 9 }  

	])

kommunes = Kommune.create([
  {name: 'Dovre', fylke_id: 10 },  
  {name: 'Etnedal', fylke_id: 10 },  
  {name: 'Gausdal', fylke_id: 10 },  
  {name: 'Gjøvik', fylke_id: 10 },  
  {name: 'Gran', fylke_id: 10 },  
  {name: 'Jevnaker', fylke_id: 10 },  
  {name: 'Lesja', fylke_id: 10 }, 
  {name: 'Lillehammer', fylke_id: 10 },  
  {name: 'Lom', fylke_id: 10 },  
  {name: 'Lunner', fylke_id: 10 },  
  {name: 'Nord-Aurdal', fylke_id: 10 },  
  {name: 'Nord-Fron', fylke_id: 10 },  
  {name: 'Nordre Land', fylke_id: 10 }, 
  {name: 'Ringebu', fylke_id: 10 },  
  {name: 'Sel', fylke_id: 10 },  
  {name: 'Skjåk', fylke_id: 10 },  
  {name: 'Søndre Land', fylke_id: 10 },  
  {name: 'Sør-Aurdal', fylke_id: 10 },  
  {name: 'Sør-Fron', fylke_id: 10 },  
  {name: 'Vang', fylke_id: 10 },  
  {name: 'Vestre Slidre', fylke_id: 10 },  
  {name: 'Vestre Toten', fylke_id: 10 },  
  {name: 'Vågå', fylke_id: 10 },  
  {name: 'Østre Toten', fylke_id: 10 },  
  {name: 'Øyer', fylke_id: 10 },  
  {name: 'Øystre Slidre', fylke_id: 10 }  

	])



kommunes = Kommune.create([
  {name: 'Bjerkreim', fylke_id: 12 }, 
  {name: 'Bokn', fylke_id: 12 }, 
  {name: 'Eigersund', fylke_id: 12 }, 
  {name: 'Finnøy', fylke_id: 12 }, 
  {name: 'Forsand', fylke_id: 12 }, 
  {name: 'Gjesdal', fylke_id: 12 }, 
  {name: 'Haugesund', fylke_id: 12 }, 
  {name: 'Hjelmeland', fylke_id: 12 }, 
  {name: 'Hå', fylke_id: 12 }, 
  {name: 'Karmøy', fylke_id: 12 }, 
  {name: 'Klepp', fylke_id: 12 }, 
  {name: 'Kvitsøy', fylke_id: 12 }, 
  {name: 'Lund', fylke_id: 12 }, 
  {name: 'Randaberg', fylke_id: 12 }, 
  {name: 'Rennesøy', fylke_id: 12 }, 
  {name: 'Sandnes', fylke_id: 12 }, 
  {name: 'Sauda', fylke_id: 12 }, 
  {name: 'Sokndal', fylke_id: 12 }, 
  {name: 'Sola', fylke_id: 12 }, 
  {name: 'Stavanger', fylke_id: 12 }, 
  {name: 'Strand', fylke_id: 12 }, 
  {name: 'Suldal', fylke_id: 12 }, 
  {name: 'Time', fylke_id: 12 }, 
  {name: 'Tysvær', fylke_id: 12 }, 
  {name: 'Utsira', fylke_id: 12 }, 
  {name: 'Vindafjord', fylke_id: 12 } 

  ])

kommunes = Kommune.create([
  {name: 'Askvoll', fylke_id: 13 }, 
  {name: 'Aurland', fylke_id: 13 },  
  {name: 'Balestrand', fylke_id: 13 },  
  {name: 'Bremanger', fylke_id: 13 },  
  {name: 'Eid', fylke_id: 13 },  
  {name: 'Fjaler', fylke_id: 13 },  
  {name: 'Flora', fylke_id: 13 },  
  {name: 'Førde', fylke_id: 13 },  
  {name: 'Gaular', fylke_id: 13 },  
  {name: 'Gloppen', fylke_id: 13 },  
  {name: 'Gulen', fylke_id: 13 },  
  {name: 'Hornindal', fylke_id: 13 },  
  {name: 'Hyllestad', fylke_id: 13 },  
  {name: 'Høyanger', fylke_id: 13 },  
  {name: 'Jølster', fylke_id: 13 },  
  {name: 'Leikanger', fylke_id: 13 },  
  {name: 'Luster', fylke_id: 13 },  
  {name: 'Lærdal', fylke_id: 13 },  
  {name: 'Naustdal', fylke_id: 13 },  
  {name: 'Selje', fylke_id: 13 },  
  {name: 'Sogndal', fylke_id: 13 },  
  {name: 'Solund', fylke_id: 13 },  
  {name: 'Stryn', fylke_id: 13 },  
  {name: 'Vik', fylke_id: 13 },  
  {name: 'Vågsøy', fylke_id: 13 },  
  {name: 'Årdal', fylke_id: 13 }  

  ])

kommunes = Kommune.create([{name: 'Svalbard', fylke_id: 14}])

kommunes = Kommune.create([
   {name: 'Agdenes', fylke_id: 15 },  
   {name: 'Bjugn', fylke_id: 15 },  
   {name: 'Frøya', fylke_id: 15 },  
   {name: 'Hemne', fylke_id: 15 },  
   {name: 'Hitra', fylke_id: 15 },  
   {name: 'Holtålen', fylke_id: 15 },   
   {name: 'Klæbu', fylke_id: 15 },  
   {name: 'Malvik', fylke_id: 15 },  
   {name: 'Meldal', fylke_id: 15 },  
   {name: 'Melhus', fylke_id: 15 },  
   {name: 'Midtre Gauldal', fylke_id: 15 },  
   {name: 'Oppdal', fylke_id: 15 },  
   {name: 'Orkdal', fylke_id: 15 },  
   {name: 'Osen', fylke_id: 15 },  
   {name: 'Rennebu', fylke_id: 15 },  
   {name: 'Rissa', fylke_id: 15 },  
   {name: 'Roan', fylke_id: 15 },  
   {name: 'Røros', fylke_id: 15 },  
   {name: 'Selbu', fylke_id: 15 },  
   {name: 'Skaun', fylke_id: 15 },  
   {name: 'Snillfjord', fylke_id: 15 },  
   {name: 'Trondheim', fylke_id: 15 },  
   {name: 'Tydal', fylke_id: 15 },  
   {name: 'Åfjord', fylke_id: 15 },  
   {name: 'Ørland', fylke_id: 15 }

  ])

kommunes = Kommune.create([
  {name: 'Bamble', fylke_id: 16 },  
  {name: 'Bø', fylke_id: 16 }, 
  {name: 'Drangedal', fylke_id: 16 },  
  {name: 'Fyresdal', fylke_id: 16 },  
  {name: 'Hjartdal', fylke_id: 16 },  
  {name: 'Kragerø', fylke_id: 16 },  
  {name: 'Kviteseid', fylke_id: 16 },  
  {name: 'Nissedal', fylke_id: 16 },  
  {name: 'Nome', fylke_id: 16 },  
  {name: 'Notodden', fylke_id: 16 },  
  {name: 'Porsgrunn', fylke_id: 16 },  
  {name: 'Sauherad', fylke_id: 16 },  
  {name: 'Seljord', fylke_id: 16 },  
  {name: 'Siljan', fylke_id: 16 },  
  {name: 'Skien', fylke_id: 16 },  
  {name: 'Tinn', fylke_id: 16 },  
  {name: 'Tokke', fylke_id: 16 },  
  {name: 'Vinje', fylke_id: 16 }  

  ])

kommunes = Kommune.create([

  {name: 'Balsfjord', fylke_id: 17 },  
  {name: 'Bardu', fylke_id: 17 },  
  {name: 'Berg', fylke_id: 17 },  
  {name: 'Dyrøy', fylke_id: 17 },  
  {name: 'Gratangen', fylke_id: 17 },  
  {name: 'Harstad', fylke_id: 17 },  
  {name: 'Ibestad', fylke_id: 17 },  
  {name: 'Karlsøy', fylke_id: 17 },  
  {name: 'Kvæfjord', fylke_id: 17 },  
  {name: 'Kvænangen', fylke_id: 17 },  
  {name: 'Kåfjord', fylke_id: 17 },  
  {name: 'Lavangen', fylke_id: 17 },  
  {name: 'Lenvik', fylke_id: 17 },  
  {name: 'Lyngen', fylke_id: 17 },  
  {name: 'Målselv', fylke_id: 17 },  
  {name: 'Nordreisa', fylke_id: 17 },  
  {name: 'Salangen', fylke_id: 17 },  
  {name: 'Skjervøy', fylke_id: 17 },  
  {name: 'Skånland', fylke_id: 17 },  
  {name: 'Storfjord', fylke_id: 17 },  
  {name: 'Sørreisa', fylke_id: 17 },  
  {name: 'Torsken', fylke_id: 17 },  
  {name: 'Tranøy', fylke_id: 17 },  
  {name: 'Tromsø', fylke_id: 17 }    

  ])


kommunes = Kommune.create([

  {name: 'Audnedal', fylke_id: 18 },  
  {name: 'Farsund', fylke_id: 18 },  
  {name: 'Flekkefjord', fylke_id: 18 },  
  {name: 'Hægebostad', fylke_id: 18 },  
  {name: 'Kristiansand', fylke_id: 18 },  
  {name: 'Kvinesdal', fylke_id: 18 },  
  {name: 'Lindesnes', fylke_id: 18 },  
  {name: 'Lyngdal', fylke_id: 18 },  
  {name: 'Mandal', fylke_id: 18 },  
  {name: 'Marnardal', fylke_id: 18 },  
  {name: 'Sirdal', fylke_id: 18 },  
  {name: 'Songdalen', fylke_id: 18 },  
  {name: 'Søgne', fylke_id: 18 },  
  {name: 'Vennesla', fylke_id: 18 },  
  {name: 'Åseral', fylke_id: 18 }

  ])

kommunes = Kommune.create([

  {name: 'Andebu', fylke_id: 19 }, 
  {name: 'Hof', fylke_id: 19 },   
  {name: 'Holmestrand', fylke_id: 19 },   
  {name: 'Horten', fylke_id: 19 }, 
  {name: 'Lardal', fylke_id: 19 }, 
  {name: 'Larvik', fylke_id: 19 }, 
  {name: 'Nøtterøy', fylke_id: 19 }, 
  {name: 'Re', fylke_id: 19 }, 
  {name: 'Sande', fylke_id: 19 }, 
  {name: 'Sandefjord', fylke_id: 19 }, 
  {name: 'Stokke', fylke_id: 19 }, 
  {name: 'Svelvik', fylke_id: 19 }, 
  {name: 'Tjøme', fylke_id: 19 }, 
  {name: 'Tønsberg', fylke_id: 19 }

  ])

kommunes = Kommune.create([
  {name: 'Aremark', fylke_id: 20}, 
  {name: 'Askim', fylke_id: 20},  
  {name: 'Eidsberg', fylke_id: 20},  
  {name: 'Fredrikstad', fylke_id: 20},  
  {name: 'Halden', fylke_id: 20},  
  {name: 'Hobøl', fylke_id: 20},  
  {name: 'Hvaler', fylke_id: 20},  
  {name: 'Marker', fylke_id: 20},  
  {name: 'Moss', fylke_id: 20},  
  {name: 'Rakkestad', fylke_id: 20},  
  {name: 'Rygge', fylke_id: 20},  
  {name: 'Råde', fylke_id: 20},  
  {name: 'Rømskog', fylke_id: 20}, 
  {name: 'Sarpsborg', fylke_id: 20},  
  {name: 'Skiptvet', fylke_id: 20},  
  {name: 'Spydeberg', fylke_id: 20},  
  {name: 'Trøgstad', fylke_id: 20},  
  {name: 'Våler', fylke_id: 20},   

  ])





