https://skillsmatter.com/skillscasts/3515-front-end-language-features

In Haskell a value of type Int is simply an Int. A value of type IO Int is a
kind of action or computation, or shell script if you like; something that you
can execute, to have some side effects, and it will in the end produce an Int.

STM is like a weak IO. It's a computation which when performed returns a value
of type a, and incidently has some side effects, but not any side effects, only
effects on transactional variables.
