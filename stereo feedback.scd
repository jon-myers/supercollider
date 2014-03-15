(
SynthDef.new('test', {|voll=1,volr=1,pan1=(-1),pan2=(1),del1=0,del2=0,lf1=20000,lb1=1, rf1=20000, rb1=1|
	var in1,in2,out1,out2;
	in1=BBandStop.ar(DelayC.ar(SoundIn.ar(0, voll),5.0,del1),lf1,lb1,);
	in2=BBandStop.ar(DelayC.ar(SoundIn.ar(1,volr),5.0,del2), rf1,rb1);
	out1=Pan2.ar(in1, pan1);
	out2=Pan2.ar(in2, pan2);
	Out.ar(0, out1+out2)}).store
)

a=Synth('test')

(z=NanoKontrol.new;
z.fader1.onChanged = {|vel|
	a.set(\voll, (vel/127));
};
z.fader2.onChanged = {|vel|
	a.set(\volr, (vel/127));
};
z.knob1.onChanged = {|vel|
	a.set(\pan1, (vel-64)/64);
};
z.knob2.onChanged = {|vel|
	a.set(\pan2, (vel-64)/64);
};
z.fader3.onChanged = {|vel|
	a.set(\del1, 5*(vel/127));
};
z.fader4.onChanged = {|vel|
	a.set(\del2, 5*(vel/127));
};
z.fader5.onChanged = {|vel|
	a.set(\lf1, (-1*2854*log2(128-vel))+20000);
}
z.fader6.onChanged = {|vel|
	a.set(\lf2, (-1*2854*log2(128-vel))+20000);
};
z.fader7.onChanged = {|vel|
	a.set(\rf1, (-1*2854*log2(128-vel))+20000);
};
z.fader8.onChanged = {|vel|
	a.set(\rf2, (-1*2854*log2(128-vel))+20000);
};
z.knob5.onChanged = {|vel|
	a.set(\lb1, (vel/127));
};
z.knob6.onChanged = {|vel|
	a.set(\lb2, (vel/127));
};
z.knob7.onChanged = {|vel|
	a.set(\rb1, (vel/127));
};
z.knob8.onChanged = {|vel|
	a.set(\rb2, (vel/127));
};

.lag



	log2(1)

	//yeah

	(-1*2854*log2(128-4))+20000

	19980/7

	log2(128)

(
// used to lag pitch
{
	SinOsc.ar(		// sine wave
		Lag.kr(			// lag the modulator
			LFPulse.kr(4, 0, 0.5, 50, 400),	// frequency modulator
			Line.kr(0, 1, 15)				// modulate lag time
		),
		0,	// phase
		0.3	// sine amplitude
	)
}.play
)