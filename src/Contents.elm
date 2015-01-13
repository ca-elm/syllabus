module Contents where

import Chapter (Chapter, makeChapters)
import Chapter.CoursePolicies
import Chapter.Schedule
import Chapter.Solutions


chapters : List Chapter
chapters = makeChapters
  [ Chapter.CoursePolicies.data
  , Chapter.Schedule.data
  , Chapter.Solutions.data
  ]
