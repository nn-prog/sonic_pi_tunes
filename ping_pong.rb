# Welcome to Sonic Pi

in_thread do
  4.times do
    with_fx :ping_pong do
      play scale(:ds3,:chinese).choose, amp: 0.2
      sleep [0.3,0.4].choose
    end
  end
end






