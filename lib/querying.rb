def select_books_titles_and_years_in_first_series_order_by_year
  %q{SELECT books.title, books.year
     FROM   books
     WHERE  books.series_id = 1 ORDER BY books.year
  }
end

def select_name_and_motto_of_char_with_longest_motto
  %q{SELECT characters.name, characters.motto
     FROM   characters
     ORDER BY LENGTH(characters.motto) DESC LIMIT 1
  }
end

def select_value_and_count_of_most_prolific_species
  %q{SELECT   characters.species, COUNT(*)
     FROM     characters
     GROUP BY characters.species
     ORDER BY COUNT(*) DESC LIMIT 1
  }
end

def select_name_and_series_subgenres_of_authors
  %q{SELECT authors.name, subgenres.name
     FROM   authors
     JOIN   series    ON series.author_id = authors.id
     JOIN   subgenres ON subgenres.id = series.subgenre_id
  }
end

def select_series_title_with_most_human_characters
  %q{SELECT   series.title
     FROM     series
     JOIN     characters ON characters.series_id = series.id
     GROUP BY series.title HAVING characters.species = 'human'
     ORDER BY COUNT(*) DESC LIMIT 1
  }
end

def select_character_names_and_number_of_books_they_are_in
  %q{SELECT   characters.name, COUNT(books.title)
     FROM     characters
     JOIN     character_books ON character_books.character_id = characters.id
     JOIN     books           ON books.id = character_books.book_id
     GROUP BY characters.name
     ORDER BY COUNT(books.title) DESC
  }
end
