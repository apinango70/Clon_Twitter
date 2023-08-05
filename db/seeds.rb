# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Elimina todos los registros existentes para comenzar desde cero en cada ejecución.
Tweet.destroy_all
puts "Borrando registros..."
puts "Agregando registros..."
# Genera 50 tweets aleatorios con datos de Faker.
50.times do
  Tweet.create(
    user_name: Faker::Internet.username,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 6)
  )
end


puts "Registros agregados"
