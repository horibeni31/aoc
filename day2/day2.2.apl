#!/usr/bin/env /usr/bin/dyalogscript
⎕IO ← 0 ⍝array indexing
inp←⊃⎕NGET'input.txt' 1
data ← {(({⍵='A':'X'⋄⍵='B':'Y'⋄'Z'}⍵[0]),⍵[2])}¨inp ⍝ using the XYZ format insted of ABC 
letters ← 'X' 'Y' 'Z'
⎕←+/{(⍵[1]='X'):1+ 3 | (letters⍳⍵[0])-1 ⋄ (⍵[1]='Y'):  3+1+letters⍳⍵[0]⋄   6+1+3 | (letters⍳⍵[0])+1}¨data