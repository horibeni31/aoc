#!/usr/bin/env /usr/bin/dyalogscript
inp←⊃⎕NGET'input.txt' 1
alphabeth←(⎕UCS 96+⍳26),⎕UCS 64+⍳26
⎕←+/{alphabeth⍳∪(⊃⍵[1])∩(⊃⍵[2])∩(⊃⍵[3])}¨inp⊂⍨ {1 = 3|⍵ }⍳⍴inp
