# Welcome to Sonic Pi
in_thread do
  loop do
    with_fx :reverb, room: 0.95, amp: 0.3 do
      sample :tabla_ghe4
      sleep 0.25
      sample :tabla_ghe7
      sleep 0.8
      sample :tabla_ghe4
      sleep 0.25
      sample :tabla_ghe8
      sleep sample_duration :guit_em9
    end
  end
end

in_thread do
  use_synth :dsaw
  loop do
    with_fx :reverb, amp: 0.2, room: 0.8 do
      sample :guit_em9, amp: 0.3
      sleep sample_duration :guit_em9
    end
  end
end
