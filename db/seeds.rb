# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

libros = Libro.create([{titulo: "Historia de dos ciudades", autor: "Charles dickens", leido: false},{titulo: "Doctor Sueño", autor: "Stephen King", leido: true},{titulo: "7 hábitos de la gente altamente efectiva", autor: "Stephen R. Covey", leido: false},{ titulo: "Lo que el viento se llevò", autor: "Margaret Mitchell", leido: false },{titulo: "El experimento", autor: "Sebastian Kafka", leido: true}, {titulo: "El resplandor", autor: "Stephen King", leido: true}])