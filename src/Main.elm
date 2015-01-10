module Main where

import Book (book)
import Contents (chapters)


port title : String
port title = "Syllabus"

main = book title chapters
