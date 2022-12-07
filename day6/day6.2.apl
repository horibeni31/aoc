#!/usr/bin/env /usr/bin/dyalogscript


inp←⊃⊃⎕NGET'input.txt' 1
ind←( ⍳¯14+⍴inp)-1

⎕←13+⊃⍸⊃¨{14=⍴∪14↑⍵↓inp}¨ind