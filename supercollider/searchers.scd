
//optimal for radio feedback, but works with laptop speakers/microphone as well.  Much less predictable this way.

//two freqency scopes, one linear, one logarythmic

FreqScope.new(400, 200, 0);

(
w = Window("  ", Rect(0, 0, 511, 300));
f = FreqScopeView.new(w, w.view.bounds, \freqMode, 0);
f.active_(true);

w.onClose_({ f.kill });
w.front;
);


//the synthdef
(
SynthDef.new(\searchers, {|fs1=8000, bw1=1.0, fs2=10000, bw2=1.0, fs3=8000, bw3=0.5, fs4=6000, bw4, del1=0.0, del2=0.0|
	var in, one,two,three,fs1osc,fs2osc,fs3osc,fs4osc;
	fs1osc=KeyState.kr(0,fs1,SinOsc.kr(0.11,0, 9980, 10000));
	fs2osc=KeyState.kr(1,fs2,SinOsc.kr(0.1,0, 9980, 10000));
	fs3osc=KeyState.kr(2,fs3,SinOsc.kr(0.09,0, 9980, 10000));
	fs4osc=KeyState.kr(3,fs4,SinOsc.kr(0.08,0, 9980, 10000));
	in=SoundIn.ar;
	three=BBandStop.ar(in, fs4osc, bw4*2.0+0.01);
	two=BBandStop.ar(three, fs3osc, bw3*2.0+0.01);
	one=BBandStop.ar(two, fs2osc, bw2*2.0+0.01);
	Out.ar(0, Pan2.ar(DelayN.ar(BBandStop.ar(one, fs1osc, bw1*2.0+0.01, 1),1.0,del-0.01)));
}).add
)

//the synth
c=Synth(\searchers);



//gui for controling delay time, frequencies, and bandwidths
(
var window;
window=Window.new("radiofeedback");
window.front;
x=Slider(window, Rect(30, 20, 40, 200)).value_(1)
.action = { arg slider;
	c.set("fs2",(slider.value*20000-0.01).postln)
};
y=Slider(window, Rect(90, 20, 40, 200)).value_(1)
.action = { arg slider;
	c.set("fs3",(slider.value*20000-0.01)*0.9)
};
z=Slider(window, Rect(150, 20, 40, 200)).value_(1)
.action = { arg slider;
	c.set("fs4",((slider.value*20000-0.01)*1.1).postln)
};
Slider(window, Rect(220, 20, 40, 200)).value_(1)
.action = { arg slider;
	c.set("bw2",slider.value)
};
Slider(window, Rect(290, 20, 40, 200)).value_(1)
.action = { arg slider;
	c.set("bw3",slider.value)
};
Slider(window, Rect(350, 20, 40, 200)).value_(1)
.action = { arg slider;
	c.set("bw4",slider.value)
};
	)


//this extra gui is useful for getting glitch-blips/bloops; Glitch only works with notch filters 2, 3, and 4.  When bandwidths are 0 or very close to 0, drag the frequencies upwards from 0 to get bleeps.
(
var window;
window=Window.new("radiofeedback");
window.view.decorator = FlowLayout(window.view.bounds);
		window.front;

		EZSlider(window, 32@400,"delay", [0.01, 1.0,\exp,0, 1.0].asSpec,
				{arg del1;
				c.set(\del1, del1.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);

EZSlider(window, 32@400,"delay", [0.01, 1.0,\exp,0, 1.0].asSpec,
				{arg del2;
				c.set(\del2, del2.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(window, 32@400,"fs1", [20.0, 20000.0,\exp,0, 1.0].asSpec,
				{arg fs1;
				c.set(\fs1, fs1.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(window, 32@400,"fs2", [20.0, 20000.0,\exp,0, 1.0].asSpec,
				{arg fs2;
				c.set(\fs2, fs2.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(window, 32@400,"fs3", [20.0, 20000.0,\exp,0, 1.0].asSpec,
				{arg fs3;
				c.set(\fs3, fs3.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(window, 32@400,"fs4", [20.0, 20000.0,\exp,0, 1.0].asSpec,
				{arg fs4;
				c.set(\fs4, fs4.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);
		EZSlider(window, 32@400,"bw1", [0.0, 3.0,\lin,0, 1.0].asSpec,
				{arg bw1;
				c.set(\bw1, bw1.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);
EZSlider(window, 32@400,"bw1", [0.0, 3.0,\lin,0, 1.0].asSpec,
				{arg bw2;
				c.set(\bw2, bw2.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);
EZSlider(window, 32@400,"bw3", [0.0, 3.0,\lin,0, 1.0].asSpec,
				{arg bw3;
				c.set(\bw3, bw3.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);
EZSlider(window, 32@400,"bw4", [0.0, 3.0,\lin,0, 1.0].asSpec,
				{arg bw4;
				c.set(\bw4, bw4.value)},
					\freq,unitWidth:30, numberWidth:60,layout:\vert);
 )



//run the synth
c=Synth(\searchers);

//use keys a, s, d, f to make the frequencies of the notch filters oscillate back and forth across the frequency spectrum.




