# Bookmarks App

## User Stories

As a user,
To see the pages I’ve saved,
I’d like to see a list of bookmarks.

Object | Behaviour
------ | ---------
pages | save
bookmarks | list, show

As a user,
So I can easily revist a website I've found,
I'd like to add a bookmark.

![diagram for first user story](https://i.imgur.com/OCZvWaH.png)

Getting started:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

Setting up test databases:

1. Connect to `psql`
2. Create the test database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager_test;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
