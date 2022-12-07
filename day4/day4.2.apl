#!/usr/bin/env /usr/bin/dyalogscript
inp←⊃⎕NGET'input.txt' 1

⎕←+/0≥(×/)¨(⊃-/)¨  {⍵[1],⌽¨⍵[2]}¨⍎¨¨¨'-'(≠⊆⊢)¨¨','(≠⊆⊢)¨inp