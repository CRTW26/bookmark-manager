require 'pg'

class Bookmark
  def self.all
    begin
      con = PG.connect(:dbname => 'bookmark_manager')
      rs = con.exec("SELECT url FROM bookmark;")
      rs.map { |bookmark| bookmark['url'] }
    end
  end
end