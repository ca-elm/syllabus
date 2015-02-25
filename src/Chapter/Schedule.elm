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

Solutions are available [below](#solutions-higher-order-functions).

# 2015-01-14: Wednesday

- Review Homework
- [Application as an Operator](https://ca-elm.github.io/book/#higher-order-functions-application-as-an-operator)
- [Lists of Things](https://ca-elm.github.io/book/#higher-order-functions-lists-of-things)
- [Working with Lists](https://ca-elm.github.io/book/#higher-order-functions-working-with-lists)
- [Map, 2, 3, 4](https://ca-elm.github.io/book/#higher-order-functions-map-2-3-4)
- [Fold (from the Right)](https://ca-elm.github.io/book/#higher-order-functions-fold-from-the-right-)

Homework: [Chapter 2 Exercises](https://ca-elm.github.io/book/#higher-order-functions-exercises) 3e, 4e, 5–7 (except 7c), and 9. Submit answers <a href=https://www.schoology.com/assignment/221224914/info target=_top>via Schoology</a>.

Solutions are available [below](#solutions-higher-order-functions).

# 2015-01-16: Friday

- Review Homework
- Review Values, Expressions, and Types

Homework: No new homework. Catch up on old assignments and enjoy your weekend.

# 2015-01-21: Wednesday

- Abstraction
- Lambda notation
- Parametric polymorphism

Homework: (solutions are available [below](#solutions-lambda-notation))

1. Write the following functions using lambda notation, and then write a type annotation for the expression:

  1. `square`, which takes a Float $x$ as input and returns $x^2$. For example, `square 5` would give you `25`.
  1. `parenthesize`, which takes a String and wraps it in parentheses. For example, `parenthesize "an aside"` would return `"(an aside)"`.
  1. `sumSquares`, which takes two Floats $x$ and $y$ and returns the sum of their squares, i.e., $x^2 + y^2$. For example, `sumSquares 3 4` would yield `25`.

1. Make a function `join` which concatenates the items in a list with commas. For example, `join ["one", "two", "three"]` would return `"one, two, three"`.

  <p class=hint>You can do this with lambda notation and `List.foldr1`

1. Write a function `repeat` which acts like `String.repeat`: it takes a number and string and repeats the string that many times. For example, `repeat 3 "a"` would return `"aaa"`. Keep in mind that `repeat 0 "a"` should return the empty string `""`.

  <p class=hint>You might need lambda notation, `List.foldr`, `List.map`, and the `[1..n]` syntax (which creates the list `[1, 2, 3, ..., n]`).

# 2015-02-25: Wednesday

- Quiz corrections
- Signal combinators: `count`, `toggle`, `toggleIf`, `toggleWhen`, `until`
- A few union types

Homework: make a two-player keyboard-mashing game. The players should repeatedly press <kbd>shift</kbd> and <kbd>enter</kbd>, respectively, to advance their bar/character/whatever across the screen. The first player to reach the goal wins. The result should look something like this: (In this particular screenshot, red is Player 1 and blue is Player 2. Player 2 has already won, because their bar is the full width of the area.)

<img src=http://i.imgur.com/5hbBDc7.png alt="screenshot of game" width=400 height=400 style="box-shadow: 0 4px 16px rgba(0,0,0,.2); display: block; margin: 0 auto 1rem;" id=mash-screenshot>

First, create a signal `input` which represents the game's input. It should be a signal of values of type Input, where Input counts the number of times each player has pressed their key.

```elm
type alias Input =
  { player1 : Int
  , player2 : Int
  }
```

<p class=hint>Define a function `countWhen` which takes a Signal of Bools and outputs a Signal of Ints which starts at 0 and counts the number of times the input signal has changed to True. Then use `countWhen` on the appropriate Keyboard signals. Combine the resultant signals with `<~` and a function `makeInput : Int -> Int -> Input`, which groups the two Int counts in an Input.

You can test your input signal with `main = asText <~ input`. Make sure that the numbers increase independently, and only increase when you press each key; that is, holding down <kbd>enter</kbd> while pressing <kbd>shift</kbd> repeatedly should only increase the `player1` counter.

Next, define the State type, which represents the current state of the game: how close each player is to the goal (as a Float between 0--just starting--and 1--finished), and which player, if any, has won (which you can represent with a union type Winner).

```elm
type alias State =
  { winner : Winner
  , player1 : Float
  , player2 : Float
  }

type Winner
  = None -- no one has won (yet)
  | Win1 -- first player has won
  | Win2 -- second player has won
```

Define `goal : number`, the number of key presses it takes to win the game (I used 40). Now, implement `update : Input -> State -> State`, which takes in an Input and a State and outputs a new State reflecting any changes to Input:

- If no one has won, it should update the `player1` and `player2` fields of the state and check if either player has reached `goal`; if s/he has, then it should set the `winner` to the appropriate value.
- If a player has already won, it should not update the `player1` or `player2` fields and it should not allow the winner to change.

You can test your `update` implementation with `main = asText <~ foldp update startState input`. Make sure it behaves as described above.

Finally, define `view`, which takes in the current game state and outputs a collage that displays the state suitably:

- Show a bar or other shape for each player, indicating their progress towards the goal.
- If a player has won, you should indicate that in some way (fill the screen with that player's color, or add a label that says `Player X won!`).

You can try to reproduce the view in the [screenshot](#mash-screenshot) or you can design your own visual representation of the state; for now, use a fixed 400&times;400 canvas size.

Test your `view` implementation with `main = view <~ foldp update startState input`. Once it works correctly, you'll have a complete game! Expand your game with two of the ideas below, or design two of your own modifications. Submit your final game on Schoology, and tell us what cool stuff you added.

1. Make the bars for each player extend from the bottom edge of the screen to the top instead of expanding outward and horizontally from the center.
1. After a player has won, let him/her press <kbd>space</kbd> to start a new game.
1. Make the bars fill the entire height of the window instead of a fixed 400&times;400 area.
1. Add a third player to the game.
1. Mouse mashing?
1. Look at the [Keyboard module documentation](http://package.elm-lang.org/packages/elm-lang/core/1.1.1/Keyboard) and figure out how to use letter keys for controls.
1. Make it so players have to alternate between two buttons (e.g., <kbd>shift</kbd>/<kbd>ctrl</kbd> and <kbd>enter</kbd>/<kbd>alt</kbd>) to advance

"""
  }
