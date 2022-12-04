#!/usr/bin/env /usr/bin/dyalogscript


inp←⊃⎕NGET'/home/benedek/Documents/aoc/day1/input.txt' 1



summed ←+/↑⍎¨¨(×≢¨inp)⊆inp

⎕←+/3↑summed[⍒summed]