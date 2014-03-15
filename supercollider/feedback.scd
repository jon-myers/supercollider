//Searchers (2013)
(
(
SynthDef.new(\searchers, {|fs1=8000, bw1=1.0, fs2=10000, bw2=1.0, fs3=8000, bw3=0.5, fs4=6000, bw4=0.6, fs5=9000,fs6=11000,fs7=12000,fs8=13000, bw5=1.0,bw6=1.0,bw7=1.0,bw8=1.0,del=0.0,clk=1.0,vol=1.0|
	var in, one,two,three,four,five,six,seven,fs1osc,fs2osc,fs3osc,fs4osc,fs5osc,fs6osc,fs7osc,fs8osc;
	fs1osc=KeyState.kr(0,fs1,SinOsc.kr(0.11*(1/clk),0, 9980, 10000));
	fs2osc=KeyState.kr(1,fs2,SinOsc.kr(0.1*(1/clk),0, 9980, 10000));
	fs3osc=KeyState.kr(2,fs3,SinOsc.kr(0.09*(1/clk),0, 9980, 10000));
	fs4osc=KeyState.kr(3,fs4,SinOsc.kr(0.08*(1/clk),0, 9980, 10000));
	fs5osc=KeyState.kr(4,fs5,SinOsc.kr(0.07*(1/clk),0, 9980, 10000));
	fs6osc=KeyState.kr(5,fs6,SinOsc.kr(0.06*(1/clk),0, 9980, 10000));
	fs7osc=KeyState.kr(6,fs7,SinOsc.kr(0.05*(1/clk),0, 9980, 10000));
	fs8osc=KeyState.kr(7,fs8,SinOsc.kr(0.04*(1/clk),0, 9980, 10000));
	in=SoundIn.ar(0,vol);

	four=BBandStop.ar(in, fs5osc, bw5*2.0+0.01);
	three=BBandStop.ar(four, fs4osc, bw4*2.0+0.01);
	two=BBandStop.ar(three, fs3osc, bw3*2.0+0.01);
	one=BBandStop.ar(two, fs2osc, bw2*2.0+0.01);
	Out.ar(0, Pan2.ar(DelayN.ar(BBandStop.ar(one, fs1osc, bw1*2.0+0.01, 1),1.0,del-0.01)));
}).store
);

(
s.waitForBoot({
	(c=Synth(\searchers);
		w=Window.new("radiofeedback",1500@400);
		w.view.decorator = FlowLayout(w.view.bounds);
		Button(w, 32@32).states_([["bleeps",Color.black,Color.red],["bleeps",Color.white,Color.black]]).action_({c.set(\fs2,-0.01,\fs3,-0.01,\fs4,-0.01,\bw2,0.01,\bw3,0.01,\bw4,0.01)});

		EZSlider(w, 32@400,"clk", [0.01, 10.0,\exp,0, 1.0].asSpec,
			{arg clk;
				c.set(\clk, clk.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(w, 32@400,"delay", [0.01, 1.0,\exp,0, 1.0].asSpec,
			{arg delay;
				c.set(\del, delay.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(w, 32@400,"fs1", [20.0, 20000.0,\exp,0, 1.0].asSpec,
			{arg fs1;
				c.set(\fs1, fs1.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(w, 32@400,"fs2", [20.0, 20000.0,\exp,0, 1.0].asSpec,
			{arg fs2;
				c.set(\fs2, fs2.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(w, 32@400,"fs3", [20.0, 20000.0,\exp,0, 1.0].asSpec,
			{arg fs3;
				c.set(\fs3, fs3.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(w, 32@400,"fs4", [20.0, 20000.0,\exp,0, 1.0].asSpec,
			{arg fs4;
				c.set(\fs4, fs4.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);
		EZSlider(w, 32@400,"bw1", [0.0, 3.0,\lin,0, 1.0].asSpec,
			{arg bw1;
				c.set(\bw1, bw1.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);
		EZSlider(w, 32@400,"bw1", [0.0, 3.0,\lin,0, 1.0].asSpec,
			{arg bw2;
				c.set(\bw2, bw2.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);
		EZSlider(w, 32@400,"bw3", [0.0, 3.0,\lin,0, 1.0].asSpec,
			{arg bw3;
				c.set(\bw3, bw3.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);
		EZSlider(w, 32@400,"bw4", [0.0, 3.0,\lin,0, 1.0].asSpec,
			{arg bw4;
				c.set(\bw4, bw4.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);
		EZSlider(w, 32@400,"vol", [0.0, 1.0,\lin,0, 1.0].asSpec,
			{arg vol;
				c.set(\vol, vol.value)},
			\freq,unitWidth:30, numberWidth:60,layout:\vert);
		f = FreqScopeView(w, 800@400, \freqMode, 0);
		f.active_(true);
		w.onClose_({ f.kill });
		w.front;

	)


})
);

)


