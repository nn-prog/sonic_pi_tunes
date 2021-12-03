# Welcome to Sonic Pi

loop do
  use_synth :piano
  with_fx :reverb, room: 1 do
    with_fx :bitcrusher, cutoff: 80 do
      2.times do
        8.times do
          tone  = chord(:E3, :m11).choose
          play tone, amp: 0.4
          sleep [0.21,0.23].choose
        end
        sleep 3
      end
    end
  end
  clear
end

