use_bpm 120

cue :foo

kick = "/Users/Gigs/Documents/Code/sonic-pi-tracks/three/kick.wav"
lead = "/Users/Gigs/Documents/Code/sonic-pi-tracks/three/lead.wav"
atmosphere = "/Users/Gigs/Documents/Code/sonic-pi-tracks/three/atmosphere.wav"

live_loop :subby do
  sample :bd_boom, amp: 0.7
  sleep 1
end

live_loop :kick2 do
  #sample kick, amp: 0.6
  sleep 1
end

live_loop :life do
  with_fx :lpf, cutoff: 69, mix: 1 do
    with_fx :reverb, room: 0.8, pre_mix: 0.9 do
      with_fx :echo, phase: 0.25, decay: 6 do
        #sample lead, rpitch: 1.65, finish: 0.2
        sleep 8
      end
    end
  end
end

live_loop :fill do
  with_fx :reverb, mix: 1, room: 0.9 do
    with_fx :echo, decay: 5, phase: 0.9 do
      with_synth :fm do
        dubby = play_chord chord(:D3, :minor), amp: 2
        sleep 16
      end
    end
  end
end

live_loop :arp do
  use_synth :dark_ambience
  play_pattern chord(:F2, :minor)
  sleep 1
end

live_loop :snare do
  with_fx :lpf, cutoff: 70 do
    sleep 1
    #sample :elec_lo_snare
    sleep 1
  end
end

live_loop :hats do
  with_fx :rhpf, cutoff: 128, res: 0.8 do
    with_synth :pnoise do
      play :d1,
        attack: 0.05, decay: 0.08, release: 0.1
      sleep 0.25
    end
  end
end





