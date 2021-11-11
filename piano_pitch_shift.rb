# Welcome to Sonic Pi
use_synth :piano
in_thread do
  8.times do
    with_fx :pitch_shift do
      play scale(:Es3, :aeolian).choose, amp: 0.2
      sleep [0.3,0.4].choose
    end
  end
end

