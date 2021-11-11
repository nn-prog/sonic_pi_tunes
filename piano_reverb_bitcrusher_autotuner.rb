# Welcome to Sonic Pi
use_synth :piano
s = chord(:C3,:m11).choose
17.times do
  with_fx :reverb, room: 1 do
    3.times do
      with_fx :bitcrusher, cutoff: 80 do
        tone  = chord(s, :add4).choose
        with_fx :autotuner do
          play tone, amp: 0.2
        end
      end
      sleep [0.31,0.33].choose
    end
    sleep 2
  end
end