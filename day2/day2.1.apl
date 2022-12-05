#!/usr/bin/env /usr/bin/dyalogscript
⎕IO ← 0 ⍝array indexing
inp←⊃⎕NGET'input.txt' 1
data ← {(({⍵='A':'X'⋄⍵='B':'Y'⋄'Z'}⍵[0]),⍵[2])}¨inp ⍝ using the XYZ format insted of ABC 
letters ← 'X' 'Y' 'Z'
⎕←+/{(3|(letters⍳⍵[0])+1)=letters⍳⍵[1]:6+1+letters⍳⍵[1] ⋄ (letters⍳⍵[0])=letters⍳⍵[1]:3+1+letters⍳⍵[1] ⋄ 1+letters⍳⍵[1]}¨data
