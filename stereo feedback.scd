(
SynthDef.new('test', {|voll=1,volr=1,pan1=(-1),pan2=(1),del1=0,del2=0,lf1=20000,lb1=1|
	var in1,in2,out1,out2;
	in1=BBandStop.ar(DelayC.ar(SoundIn.ar(0, voll),5.0,del1),lf1,lb1,);
	in2=DelayC.ar(SoundIn.ar(1,volr),5.0,del2);
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
	a.set(\lf1,
)
	