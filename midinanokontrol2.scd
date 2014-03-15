
(n = NanoKontrol.new;

// assign actions
n.fader1.onChanged = {|vel|
	"fader 1 changed".postln;
	vel.postln;

	c.set(\fs1, vel*156.25);
};
n.fader2.onChanged = {|vel|
	"fader 2 changed".postln;
	vel.postln;
	c.set(\fs2, vel*156.25)
};
n.fader3.onChanged = {|vel|
	"fader 3 changed".postln;
	vel.postln;
	c.set(\fs3, vel*156.25)
};
n.fader4.onChanged = {|vel|
	"fader 4 changed".postln;
	vel.postln;
	c.set(\fs4, vel*156.25)
};
n.fader5.onChanged = {|vel|
	"fader 5 changed".postln;
	vel.postln;
	c.set(\fs5, vel*156.25)
};
n.fader6.onChanged = {|vel|
	"fader 6 changed".postln;
	vel.postln;
	c.set(\fs6, vel*156.25)
};
n.fader7.onChanged = {|vel|
	"fader 7 changed".postln;
	vel.postln;
	c.set(\fs7, vel*156.25)
};
n.fader8.onChanged = {|vel|
	"fader 8 changed".postln;
	vel.postln;
	c.set(\fs8, vel*156.25)
};

n.knob1.onChanged = {|vel|
	"knob 1 changed".postln;
	c.set(\bw1, vel*0.015625);
};

n.knob2.onChanged = {|vel|
	"knob 2 changed".postln;
	c.set(\bw2, vel*0.015625);
};

n.knob3.onChanged = {|vel|
	"knob 3 changed".postln;
	c.set(\bw3, vel*0.015625);
};

n.knob4.onChanged = {|vel|
	"knob 4 changed".postln;
	c.set(\bw4, vel*0.015625);
};

n.knob5.onChanged = {|vel|
	"knob 5 changed".postln;
	c.set(\bw5, vel*0.015625);
};

)


