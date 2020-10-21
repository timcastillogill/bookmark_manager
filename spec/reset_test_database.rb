def reset_test_database
  connection = PG.connect(dbname: 'Bookmark_manager_test')
  connection.exec("TRUNCATE bookmarks;")
end
