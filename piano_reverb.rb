# Welcome to Sonic Pi
#         69 70  71 60 61  62 63  64 65 66  67  68

octave = [:A,:As,:B,:C,:Cs,:D,:Ds,:E,:F,:Fs,:G,:Gs].ring

current_major = chord(:Cs3,  :m13)

in_thread do
  use_synth :piano
  120.times do
    #puts current_major
    with_fx :reverb, room: 0.9 do
      3.times do
        puts current_major
        note = current_major.choose
        play note, amp: 0.7
        sleep 0.15
        note2 = current_major.choose
        play note2, amp: 0.7
        sleep 0.17
        play [note, note2], amp: 0.7
        sleep [0.31,0.33].choose
      end
    end
    sleep 2
  end
end









