---
title: Solutions
layout: default
---

<h1 id=elm-basics>Elm Basics</h1>

1. Delete everything you have in the online editor. Write a program from scratch to show the text "Hello again!" in the space on the right side of the screen. Make sure you understand how each part of your program works--if you find yourself looking back at the example code, re-read the relevant section and start over.

    ```
    import Text

    main = Text.plainText "Hello again!"
    ```

1. Write type annotations for the following declarations:

    ```
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

    ```
    import Text

    main = Text.plainText (toString ((4 + 9 + 16 + 25) / 4))
    ```

    or:

    ```
    import Text

    asText = toString >> Text.plainText
    main = asText ((4 + 9 + 16 + 25) / 4)
    ```

1. Answer the following questions about the functions `f`, `g`, and `h` with these type annotations:

    ```
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

    ```
    import Text

    fourthRoot = sqrt >> sqrt
    main = Text.plainText (toString (fourthRoot 16))
    ```
