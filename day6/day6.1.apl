#!/usr/bin/env /usr/bin/dyalogscript


inp←⊃⊃⎕NGET'input.txt' 1
ind←( ⍳¯4+⍴inp)-1

⎕←3+⊃⍸⊃¨{4=⍴∪4↑⍵↓inp}¨ind