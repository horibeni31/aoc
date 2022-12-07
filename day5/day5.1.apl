#!/usr/bin/env /usr/bin/dyalogscript
inp←⊃⎕NGET'input.txt' 1

stacks ←⊃(inp⊆⍨{0≠⊃⍴⍵}¨inp)[1] ⍝ the first part of the input
commands ←⊃(inp⊆⍨{0≠⊃⍴⍵}¨inp)[2] ⍝ the second part of the input

s←↓⌽⍉↑(¯1+⍴stacks)↑{⍵⊆⍨0≠ 4 | ⍳⍴⍵} ¨ stacks ⍝ transformint he stack section into nested vector
s2←{(⍵≠' ') /⍵}¨{⍵[2]}¨¨s ⍝ remove trailing spaces and brackets

c←⍎¨⊃¨¨{~⍵∊'movefromto ':⍵ ⋄ ''}¨¨commands ⍝ removing text from the command
⍝ modifying the source stack                        - modifying the destination stack                      -not modifying the command array
{(((⊃s2[⍵[2]])←((⍴⊃s2[⍵[2]])-⍵[1])↑⊃s2[⍵[2]])     ⊢     (⊃s2[⍵[3]])←(⊃s2[⍵[3]]),⍵[1]↑⌽⊃s2[⍵[2]])⊢⍵}¨c ⍝modify the destination stack
⎕←(⊃⌽)¨s2