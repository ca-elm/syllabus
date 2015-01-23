module Chapter.Schedule where

data =
  { title = "Schedule"
  , content = """

Homework is due the next class period unless otherwise noted.

# 2015-01-07: Wednesday

- Introduction to the Course
- [A Greeting](https://ca-elm.github.io/book/#elm-basics-a-greeting)
- [Import Declarations](https://ca-elm.github.io/book/#elm-basics-import-declarations)
- [Top-level Declarations and Main](https://ca-elm.github.io/book/#elm-basics-top-level-declarations-and-main)
- [Functions](https://ca-elm.github.io/book/#elm-basics-functions)
- [Type Annotations](https://ca-elm.github.io/book/#elm-basics-type-annotations)
- [Function Types](https://ca-elm.github.io/book/#elm-basics-function-types)
- [Type Errors](https://ca-elm.github.io/book/#elm-basics-type-errors)
- [Numbers and Arithmetic](https://ca-elm.github.io/book/#elm-basics-numbers-and-arithmetic)
- [Converting Numbers to Strings](https://ca-elm.github.io/book/#elm-basics-converting-numbers-to-strings)
- [Function Composition](https://ca-elm.github.io/book/#elm-basics-function-composition)
- [Precedence](https://ca-elm.github.io/book/#elm-basics-precedence)

Homework: [Chapter 1 Exercises](https://ca-elm.github.io/book/#elm-basics-exercises) 1–5. Submit answers <a href=https://www.schoology.com/assignment/217256152/info target=_top>via Schoology</a>.

Solutions are available [below](#solutions-elm-basics).

# 2015-01-09: Friday

- Review Homework
- [Currying](https://ca-elm.github.io/book/#higher-order-functions-currying)
- [Operators Revisited](https://ca-elm.github.io/book/#higher-order-functions-operators-revisited)
- [Composition Decomposition](https://ca-elm.github.io/book/#higher-order-functions-composition-decomposition)
- [Flip](https://ca-elm.github.io/book/#higher-order-functions-flip)
- [Aside: Creating Functions](https://ca-elm.github.io/book/#higher-order-functions-aside-creating-functions)

Homework: [Chapter 2 Exercises](https://ca-elm.github.io/book/#higher-order-functions-exercises) 1–4, excluding 3e and 4e. Submit answers <a href=https://www.schoology.com/assignment/219060742/info target=_top>via Schoology</a>.

# 2015-01-14: Wednesday

- Review Homework
- [Application as an Operator](https://ca-elm.github.io/book/#higher-order-functions-application-as-an-operator)
- [Lists of Things](https://ca-elm.github.io/book/#higher-order-functions-lists-of-things)
- [Working with Lists](https://ca-elm.github.io/book/#higher-order-functions-working-with-lists)
- [Map, 2, 3, 4](https://ca-elm.github.io/book/#higher-order-functions-map-2-3-4)
- [Fold (from the Right)](https://ca-elm.github.io/book/#higher-order-functions-fold-from-the-right-)

Homework: [Chapter 2 Exercises](https://ca-elm.github.io/book/#higher-order-functions-exercises) 3e, 4e, 5–7 (except 7c), and 9. Submit answers <a href=https://www.schoology.com/assignment/221224914/info target=_top>via Schoology</a>.

# 2015-01-16: Friday

- Review Homework
- Review Values, Expressions, and Types

Homework: No new homework. Catch up on old assignments and enjoy your weekend.

# 2015-01-21: Wednesday

- Abstraction
- Lambda notation
- Parametric polymorphism

Homework:

1. Write the following functions using lambda notation, and then write a type annotation for the expression:

  1. `square`, which takes a Float $x$ as input and returns $x^2$. For example, `square 5` would give you `25`.
  1. `parenthesize`, which takes a String and wraps it in parentheses. For example, `parenthesize "an aside"` would return `"(an aside)"`.
  1. `sumSquares`, which takes two Floats $x$ and $y$ and returns the sum of their squares, i.e., $x^2 + y^2$. For example, `sumSquares 3 4` would yield `25`.

1. Make a function `join` which concatenates the items in a list with commas. For example, `join ["one", "two", "three"]` would return `"one, two, three"`.

  <p class=hint>You can do this with lambda notation and `List.foldr1`

1. Write a function `repeat` which acts like `String.repeat`: it takes a number and string and repeats the string that many times. For example, `repeat 3 "a"` would return `"aaa"`. Keep in mind that `repeat 0 "a"` should return the empty string `""`.

  <p class=hint>You might need lambda notation, `List.foldr`, `List.map`, and the `[1..n]` syntax (which creates the list `[1, 2, 3, ..., n]`).

<div class="container"><p class="progress"></p></div>

"""
  }
