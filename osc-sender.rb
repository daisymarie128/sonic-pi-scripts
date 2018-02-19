# Welcome to Sonic Pi v3.1
use_osc "localhost", 12345
osc "/hello/world"

live_loop :low do
  tick
  synth :zawa, wave: 1, phase: 0.25, release: 5, note: (knit :e1, 12, :c1, 4).look, cutoff: (line 60, 120, steps: 6).look
  sleep 1
  osc "/hello/world", rand_i(50)
end