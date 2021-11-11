# Welcome to Sonic Pi

use_synth :piano

chords = []
i = 0


2.times do
  with_fx :reverb, room: 1 do
    8.times do
      with_fx :bitcrusher, cutoff: 80 do
        tone  = chord(:E3, :m11).choose
        play tone, amp: 0.4
        chords << tone
      end
      sleep [0.21,0.23].choose
    end
    sleep 3
  end
end
puts chord(:E3, :m11)
puts chords

