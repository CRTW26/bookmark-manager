require 'pg'

class Bookmark

  def self.all(database = 'bookmark_manager')
    begin
      con = PG.connect(:dbname => database)
      rs = con.exec("SELECT url FROM bookmark;")
      rs.map { |bookmark| bookmark['url'] }
    end
  end
end