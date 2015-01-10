module Contents where

import Chapter (Chapter, makeChapters)
import Chapter.Schedule
import Chapter.Solutions


chapters : List Chapter
chapters = makeChapters
  [ Chapter.Schedule.data
  , Chapter.Solutions.data
  ]
