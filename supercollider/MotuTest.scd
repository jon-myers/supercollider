(
SynthDef.new("noinput", {|a1=0.5,a2=0.5,a3=0.5,a4=0.5,b1=0.5,b2=0.5,b3=0.5,b4=0.5, c1=0.5,c2=0.5,c3=0.5,c4=0.5,d1=0.5,d2=0.5,d3=0.5,d4=0.5|
	var in1,in2,in3,in4;
	in1=SoundIn.ar(0,[1,0,0,0]);
	in2=SoundIn.ar(1, [0,1,0,0]);
	in3=SoundIn.ar(2,[0,0,1,0]);
	in4=SoundIn.ar(3,[0,0,0,1]);
	Out.ar(0, [(in1*a1)+(in2*a2)+(in3*a3)+(in4*a4), (in1*b1)+(in2*b2)+(in3*b3)+(in4*b4),(in1*c1)+(in2*c2)+(in3*c3)+(in4*c4),(in1*d1)+(in2*d2)+(in3*d3)+(in4*d4)])
}).add
)
a=Synth("noinput")

(var bindow;
bindow=Window.new("no input",[1000,600, 600, 400] );
bindow.view.decorator = FlowLayout(bindow.view.bounds);
		bindow.front;

		EZSlider(bindow, 32@400,"a1", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg a1;
				a.set(\a1, a1.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"a2", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg a2;
				a.set(\a2, a2.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
EZSlider(bindow, 32@400,"a1", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg a3;
				a.set(\a3, a3.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"a2", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg a4;
				a.set(\a4, a4.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);

			EZSlider(bindow, 32@400,"b1", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg b1;
				a.set(\b1, b1.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"b2", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg b2;
				a.set(\b2, b2.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
EZSlider(bindow, 32@400,"b3", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg b3;
				a.set(\b3, b3.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"b4", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg b4;
				a.set(\b4, b4.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
	EZSlider(bindow, 32@400,"c1", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg c1;
				a.set(\c1, c1.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"c2", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg c2;
				a.set(\c2, c2.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
EZSlider(bindow, 32@400,"c3", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg c3;
				a.set(\c3, c3.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"c4", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg c4;
				a.set(\c4, c4.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
	EZSlider(bindow, 32@400,"d1", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg d1;
				a.set(\d1, d1.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"d2", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg d2;
				a.set(\d2, d2.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
EZSlider(bindow, 32@400,"d3", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg d3;
				a.set(\d3, d3.value)}, 0.5,
					unitWidth:30, numberWidth:60,layout:\vert);

		EZSlider(bindow, 32@400,"d4", [0.0, 1.0,\lin,0, 1.0].asSpec,
				{arg d4;
				a.set(\d4, d4.value)},0.5,
					unitWidth:30,  numberWidth:60,layout:\vert);
	bindow.front
)

{Impulse.ar([0,0])}.play

{Blip.ar([50,50], 10)}.play