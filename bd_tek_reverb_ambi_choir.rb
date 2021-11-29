##
in_thread do
  loop do
    4.times do
      sample :bd_tek
      sleep 0.2
      sample :bd_tek
      sleep 1
    end
  end
end

in_thread do
  loop do
    sleep 4.8
    with_fx :reverb, room: 0.9 do
      sample :ambi_choir, amp: 0.3
    end
  end
end




