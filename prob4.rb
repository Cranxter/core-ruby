# Problem-4 Connecting ruby script to postgres Database

require 'postgres'


conn = PGconn.connect("localhost", 5432, '', '', "test", "cranx", "123456")


begin
		res = conn.exec("SELECT id FROM players;")
	rescue  
	else    
		puts 'DELETING players...'
		res = conn.exec("DROP TABLE players;")
	end

begin

	res=conn.exec("CREATE TABLE players (id serial, name varchar(20) , age int);")
	res=conn.exec("INSERT INTO PLAYERS (name,age) VALUES ('Eden Hazard',25);" )
	res=conn.exec("INSERT INTO PLAYERS (name,age) VALUES ('Frank Lampard',37);" )
	res=conn.exec("INSERT INTO PLAYERS (name,age) VALUES ('Diego Costa',26);" )
	res=conn.exec("INSERT INTO PLAYERS (name,age) VALUES ('Juan Mata',25);" )
	res=conn.exec("UPDATE PLAYERS SET name='Fernando Torres' WHERE age=37 ;" )
	res=conn.exec("DELETE FROM PLAYERS WHERE id=3;")
rescue Postgres::PGError => e
	puts "Error ."
	puts "Error code: #{e.err}"
	puts "Error message: #{e.errstr}"
	conn.close() if conn	

end
