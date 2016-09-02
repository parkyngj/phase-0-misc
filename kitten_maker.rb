# Operation Kitten Explosion
# A Ruby program that uses persistent data, involving Object Relational Mapping.

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
# command found at http://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database
db = SQLite3::Database.new("kittens.db")

# learn about fancy string delimiters
create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS kittens(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  age INT 
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)
db.results_as_hash = true

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# explore ORM by retrieving data
kittens = db.execute("SELECT * FROM kittens")
puts kittens.class
p kittens


# add lots of kittens
def create_kitten(database, name, age)
  database.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

100.times do create_kitten(db, Faker::Name.name, 0) end

kittens.each do |kitten|
  puts "#{kitten['name']} is #{kitten['age']}"
end