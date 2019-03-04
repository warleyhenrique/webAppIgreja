# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Gerando os Tipos de Membros (Kind)..."
Kind.create!([{description: "Membro", rmk: "Membro Batizado e em comunhão com Cristo e a Igreja"},
              {description: "Cooperador"},
              {description: "Parado"}])
puts "Gerando os Tipos de Membros (Kind)...[OK]"

puts "Gerando os Departamentos (Departament)..."
Departament.create!([{name: "Congregação", rmk: "Esse deártamento se refere a toda Congregação"},
              {name: "Adolescentes" },
              {name: "Jovens"},
              {name: "Coral"}])
puts "Gerando os Departamentoss (Departament)...[OK]"


puts "Gerando Membros (Members)...................[  ]"
    57.times do |i|
      Member.create(
          first_name: Faker::Name.first_name,
          full_name: Faker::Name.name,
          father_name: Faker::Name.name,
          monther_name: Faker::Name.name,
          sex: "Masculino",
          birthday: Faker::Date.birthday(18, 65),
          baptism_date: Faker::Date.birthday(1, 30),
          place_of_birth: Faker::Address.city,
          marital_status: "Casado",
          email: Faker::Internet.email,
          schooling: "Ensino Superior",
          profession: Faker::Job.field,
          kind: Kind.all.sample
      )
    end
    8.times do |i|
      Member.create(
          first_name: Faker::Name.first_name,
          full_name: Faker::Name.name,
          father_name: Faker::Name.name,
          monther_name: Faker::Name.name,
          sex: "Feminino",
          birthday: Faker::Date.birthday(18, 65),
          baptism_date: Faker::Date.birthday(1, 30),
          place_of_birth: Faker::Address.city,
          marital_status: "Casado",
          email: Faker::Internet.email,
          schooling: "Ensino Superior",
          profession: Faker::Job.field,
          kind: Kind.all.sample
      )
    end
    
     8.times do |i|
      Member.create(
          first_name: Faker::Name.first_name,
          full_name: Faker::Name.name,
          father_name: Faker::Name.name,
          monther_name: Faker::Name.name,
          sex: "Feminino",
          birthday: Faker::Date.birthday(18, 65),
          baptism_date: Faker::Date.birthday(1, 30),
          place_of_birth: Faker::Address.city,
          marital_status: "Solteiro",
          email: Faker::Internet.email,
          schooling: "Ensino Médio",
          profession: Faker::Job.field,
          kind: Kind.all.sample
      )
    end
    
puts "Gerando os Contatos (Members)...................[OK]"

puts "Gerando os Cargos (Office)..."
    2.times do |i|
        Office.create!([
            {role: Role.all.sample},
            {departament: Departament.all.sample},
            {member: Member.all.sample}])
    end
puts "Gerando os Gargos (Office)...[OK]"




