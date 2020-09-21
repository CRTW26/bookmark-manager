def drop_table 
  con = PG.connect(:dbname => 'bookmark_manager_test')
  con.exec("DROP TABLE bookmark;")
end 

