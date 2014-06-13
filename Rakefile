desc 'Import words list'
task :import do
  require 'rubygems'
  require 'sqlite3'

  db = SQLite3::Database.new 'Resources/words.sqlite3'
  db.execute <<-SQL
    CREATE TABLE words (
      word varchar(40),
      synonyms text
    )
  SQL

  db.execute('CREATE UNIQUE INDEX words_index ON words (word)')

  system 'mkdir -p tmp'
  system 'curl https://raw.githubusercontent.com/soffes/moby/master/words.txt > tmp/words.txt'

  file = File.open('tmp/words.txt', 'rb')
  text = file.read

  text.split("\n").each do |line|
    words = line.split(',')
    word = words.first
    synonyms = words[1..(words.length)].join(',')

    db.execute("INSERT INTO words (word, synonyms) VALUES (?, ?)", word, synonyms)
  end

  file.close
end

task default: :import
