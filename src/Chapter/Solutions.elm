module Chapter.Solutions where

data =
  { title = "Solutions"
  , content = """

Solutions to previous homework exercises.

# Elm Basics

1. Delete everything you have in the online editor. Write a program from scratch to show the text "Hello again!" in the space on the right side of the screen. Make sure you understand how each part of your program works--if you find yourself looking back at the example code, re-read the relevant section and start over.

  ```elm
  import Text

  main = Text.plainText "Hello again!"
  ```

1. Write type annotations for the following declarations:

  ```elm
  alpha : String
  alpha = "Hello!"

  beta : number -> String
  beta = toString

  gamma : String -> Element
  gamma = Text.plainText

  delta : String
  delta = toString 5

  epsilon : number -> Element
  epsilon = toString >> Text.plainText
  ```

1. Write a program to calculate and display the average of the numbers 4, 9, 16, and 25. Try this first without using the `asText` function from the [Function Composition](https://ca-elm.github.io/book/#elm-basics-function-composition) section, and then modify your program to use `asText`. Which program do you think is easier to understand?

  ```elm
  import Text

  main = Text.plainText (toString ((4 + 9 + 16 + 25) / 4))
  ```

  or:

  ```elm
  import Text

  asText = toString >> Text.plainText
  main = asText ((4 + 9 + 16 + 25) / 4)
  ```

1. Answer the following questions about the functions `f`, `g`, and `h` with these type annotations:

  ```elm
  f : String -> number
  g : String -> Element
  h : number -> String
  ```

  1. Can you compose the functions `f` and `g` as `f >> g`? If so: what is the type of the result? If not: explain.

      No. `f`'s output must have the same type as `g`'s input, but `f`'s output is a number and `g`'s input is a String.

  1. What about composing `f` and `h` as `f >> h`? If you can do this: what is the type of the result? If not: explain.

      Yes. `String -> String`.

  1. What is the type of `f >> h >> g`?

      `String -> Element`

1. The `sqrt` function takes a number as input and outputs its square root. Use the function composition operator to create a function `fourthRoot` which outputs the fourth root of its argument. Test your function by writing a program to display the fourth root of 16 (the answer should be 2).

  ```elm
  import Text

  fourthRoot = sqrt >> sqrt
  main = Text.plainText (toString (fourthRoot 16))
  ```

# Higher-order Functions

1. Explain the difference between the expressions `String.repeat`, `String.repeat 5`, and `String.repeat 5 "Hello!"`. Give the type of each expression.

  - `String.repeat : number -> String -> String` is a function which accepts a number and a String and repeats the String the given number of times.
  - `String.repeat 5 : String -> String` is a function which accepts a String as input and repeats it five times.
  - `String.repeat 5 "Hello!" : String` is a String with the characters `Hello!Hello!Hello!Hello!Hello!`

1. The `max` function has a type of `number -> number -> number` and returns the larger of its two inputs; similarly, `min` returns the smaller of its two inputs. Use these two functions to define:

  ```elm
  clamp : number -> number -> number -> number
  ```

  Where `clamp low high x` outputs the number between `low` and `high` (inclusive) which is closest to `x`; that is, `clamp low high x` outputs `low` if `x` is less than `low`, `high` if `x` is greater than `high`, and `x` otherwise.

  Use partial application and function composition to define clamp in terms of its first two inputs (`clamp low high = ...`).

  ```elm
  clamp : number -> number -> number -> number
  clamp l h = max l >> min h
  ```

1. Explain in words what each of the following functions do. Also give the type of each function.

  1. `String.repeat 5 >> String.repeat 3`

    Takes a String as input and repeats it 15 times. `String -> String`

  1. `flip String.repeat "Hello" >> String.repeat 2`

    Takes a number and repeats `Hello` twice that many times. `Int -> String`

  1. `min 4 >> flip String.repeat "A"`

    Takes a number and repeats `A` that many times, but no more than 4 times. `Int -> String`

  1. `(-) 4`

    Takes a number $x$ and outputs $4 - x$. `number -> number`

  1. `((-) >> (<|)) 4`

    Takes a number $x$ and outputs $4 - x$. `number -> number`

1. Write type annotations for the following type declarations:

  ```elm
  alpha : number -> number
  alpha = max 4

  beta : Int -> String -> String
  beta = String.repeat << (+) 4

  gamma : (Float -> a) -> (a -> b) -> Float -> b
  gamma = (>>) sqrt >> (>>)

  delta : (a -> b -> c) -> a -> b -> c
  delta = flip >> flip

  epsilon : (String -> a) -> ((b -> a) -> c) -> c
  epsilon = (>>) toString >> (|>)
  ```

"""
  }
