# Welcome to Sonic Pi

in_thread do
  loop do
    with_fx :panslicer do
      play scale(:Gs3,:chinese).choose, amp: 0.2
      sleep [0.3,0.4].choose
    end
  end
end






