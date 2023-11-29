# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Ticker.create([{
                "name": "Grupo Aval Acciones y Valores S.A.",
                "ticker": "AVAL",
                "permaTicker": "US000000011729",
                "openFIGIComposite": "BBG004T0ZMF6",
                "assetType": "Stock",
                "isActive": true,
                "countryCode": "US"},
               {
                 "name": "Ecopetrol SA",
                 "ticker": "EC",
                 "permaTicker": "US000000010738",
                 "openFIGIComposite": "BBG000RJ1Y75",
                 "assetType": "Stock",
                 "isActive": true,
                 "countryCode": "US"
               },
               {
                 "name": "Avianca Holdings S.A",
                 "ticker": "AVHOQ",
                 "permaTicker": "US000000085797",
                 "openFIGIComposite": "BBG0059H9PD2",
                 "assetType": "Stock",
                 "isActive": false,
                 "countryCode": "US"
               },
               {
                 "name": "Cementos Argos S.A",
                 "ticker": "CMTOY",
                 "permaTicker": "US000000044985",
                 "openFIGIComposite": "BBG000RJSR99",
                 "assetType": "Stock",
                 "isActive": true,
                 "countryCode": "US"
               },
               {
                 "name": "Grupo Nutresa S.A.",
                 "ticker": "GCHOY",
                 "permaTicker": "US000000061974",
                 "openFIGIComposite": "BBG000SNJQ82",
                 "assetType": "Stock",
                 "isActive": true,
                 "countryCode": "US"
               },
               {
                 "name": "Almacenes Exito S.A.",
                 "ticker": "EXTO",
                 "permaTicker": "US000000111407",
                 "openFIGIComposite": "BBG01HTN6KT7",
                 "assetType": "Stock",
                 "isActive": true,
                 "countryCode": "US"
               }
              ])

puts "trickers colombianos agregados"
