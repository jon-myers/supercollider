(~synthesis=(
	{
		var envs,amps,a1,a2,a3,a4,a5,a6,a7,a8,
		b1,b2,b3,b4,b5,b6,b7,b8,
		c1,c2,c3,c4,c5,c6,c7,c8,
		d1,d2,d3,d4,d5,d6,d7,d8,
		e1,e2,e3,e4,e5,e6,e7,e8,
		f1,f2,f3,f4,f5,f6,f7,f8,
		g1,g2,g3,g4,g5,g6,g7,g8,
		h1,h2,h3,h4,h5,h6,h7,h8,
		i1,i2,i3,i4,i5,i6,i7,i8,
		j1,j2,j3,j4,j5,j6,j7,j8,
		ts,hi,lo,mid,vol,
		z1,z2,z3,z4,z5,z6,z7,z8,
		y1,y2,y3,y4,y5,y6,y7,y8,
		x1,x2,x3,x4,x5,x6,x7,x8,
		v1,v2,v3,v4,v5,v6,v7,v8,
		w1,w2,w3,w4,w5,w6,w7,w8;

		ts=60;lo=20;hi=1024*lo;mid=32*lo;vol=0.01;
		a1=ts.rand;
		a2=ts.rand;
		a3=ts.rand;
		a4=ts.rand;
		a5=ts.rand;
		a6=ts.rand;
		a7=ts.rand;
		a8=ts.rand;
		b1=ts.rand;
		b2=ts.rand;
		b3=ts.rand;
		b4=ts.rand;
		b5=ts.rand;
		b6=ts.rand;
		b7=ts.rand;
		b8=ts.rand;
		c1=(ts/2).rand;
		c2=(ts/2).rand;
		c3=(ts/2).rand;
		c4=(ts/2).rand;
		c5=(ts/2).rand;
		c6=(ts/2).rand;
		c7=(ts/2).rand;
		c8=(ts/2).rand;
		d1=(ts/2).rand;
		d2=(ts/2).rand;
		d3=(ts/2).rand;
		d4=(ts/2).rand;
		d5=(ts/2).rand;
		d6=(ts/2).rand;
		d7=(ts/2).rand;
		d8=(ts/2).rand;
		e1=ts.rand;
		e2=ts.rand;
		e3=ts.rand;
		e4=ts.rand;
		e5=ts.rand;
		e6=ts.rand;
		e7=ts.rand;
		e8=ts.rand;
		f1=ts.rand;
		f2=ts.rand;
		f3=ts.rand;
		f4=ts.rand;
		f5=ts.rand;
		f6=ts.rand;
		f7=ts.rand;
		f8=ts.rand;
		g1=ts.rand;
		g2=ts.rand;
		g3=ts.rand;
		g4=ts.rand;
		g5=ts.rand;
		g6=ts.rand;
		g7=ts.rand;
		g8=ts.rand;
		h1=ts.rand;
		h2=ts.rand;
		h3=ts.rand;
		h4=ts.rand;
		h5=ts.rand;
		h6=ts.rand;
		h7=ts.rand;
		h8=ts.rand;
		i1=(ts/2).rand;
		i2=(ts/2).rand;
		i3=(ts/2).rand;
		i4=(ts/2).rand;
		i5=(ts/2).rand;
		i6=(ts/2).rand;
		i7=(ts/2).rand;
		i8=(ts/2).rand;
		j1=(ts/2).rand;
		j2=(ts/2).rand;
		j3=(ts/2).rand;
		j4=(ts/2).rand;
		j5=(ts/2).rand;
		j6=(ts/2).rand;
		j7=(ts/2).rand;
		j8=(ts/2).rand;
		z1=(hi-lo).rand+lo;
		z2=(hi-lo).rand+lo;
		z3=(hi-lo).rand+lo;
		z4=(hi-lo).rand+lo;
		z5=(hi-lo).rand+lo;
		z6=(hi-lo).rand+lo;
		z7=(hi-lo).rand+lo;
		z8=(hi-lo).rand+lo;
		y1=(hi-lo).rand+lo;
		y2=(hi-lo).rand+lo;
		y3=(hi-lo).rand+lo;
		y4=(hi-lo).rand+lo;
		y5=(hi-lo).rand+lo;
		y6=(hi-lo).rand+lo;
		y7=(hi-lo).rand+lo;
		y8=(hi-lo).rand+lo;
		x1=(hi-lo).rand+lo;
		x2=(hi-lo).rand+lo;
		x3=(hi-lo).rand+lo;
		x4=(hi-lo).rand+lo;
		x5=(hi-lo).rand+lo;
		x6=(hi-lo).rand+lo;
		x7=(hi-lo).rand+lo;
		x8=(hi-lo).rand+lo;
		w1=(hi-lo).rand+lo;
		w2=(hi-lo).rand+lo;
		w3=(hi-lo).rand+lo;
		w4=(hi-lo).rand+lo;
		w5=(hi-lo).rand+lo;
		w6=(hi-lo).rand+lo;
		w7=(hi-lo).rand+lo;
		w8=(hi-lo).rand+lo;
		v1=(hi-lo).rand+lo;
		v2=(hi-lo).rand+lo;
		v3=(hi-lo).rand+lo;
		v4=(hi-lo).rand+lo;
		v5=(hi-lo).rand+lo;
		v6=(hi-lo).rand+lo;
		v7=(hi-lo).rand+lo;
		v8=(hi-lo).rand+lo;


		envs=
		[
			//a
			Env.new([lo, ((hi-lo).rand)+lo], [a1],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a2],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a3],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a4],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a5],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a6],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a7],'exponential'),
			Env.new([lo, ((hi-lo).rand)+lo], [a8],'exponential'),
			//b
			Env.new([hi, ((hi-lo).rand)+lo], [b1],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b2],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b3],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b4],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b5],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b6],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b7],'exponential'),
			Env.new([hi, ((hi-lo).rand)+lo], [b8],'exponential'),
			//c
			Env.new([z1,z1, mid], [(ts/2)-c1,c1],'exponential'),
			Env.new([z2,z2, mid], [(ts/2)-c2,c2],'exponential'),
			Env.new([z3,z3, mid], [(ts/2)-c3,c3],'exponential'),
			Env.new([z4,z4, mid], [(ts/2)-c4,c4],'exponential'),
			Env.new([z5,z5, mid], [(ts/2)-c5,c5],'exponential'),
			Env.new([z6,z6, mid], [(ts/2)-c6,c6],'exponential'),
			Env.new([z7,z7, mid], [(ts/2)-c7,c7],'exponential'),
			Env.new([z8,z8, mid], [(ts/2)-c8,c8],'exponential'),
			//d
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d1],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d2],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d3],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d4],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d5],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d6],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d7],'exponential'),
			Env.new([mid,mid,((hi-lo).rand)+lo], [ts/2,d8],'exponential'),
			//e
			Env.new([y1,y1,hi], [ts-e1,e1],'exp'),
			Env.new([y2,y2,hi], [ts-e2,e2],'exp'),
			Env.new([y3,y3,hi], [ts-e3,e3],'exp'),
			Env.new([y4,y4,hi], [ts-e4,e4],'exp'),
			Env.new([y5,y5,hi], [ts-e5,e5],'exp'),
			Env.new([y6,y6,hi], [ts-e6,e6],'exp'),
			Env.new([y7,y7,hi], [ts-e7,e7],'exp'),
			Env.new([y8,y8,hi], [ts-e8,e8],'exp'),
			//f
			Env.new([x1,x1,lo], [ts-f1,f1],'exp'),
			Env.new([x2,x2,lo], [ts-f2,f2],'exp'),
			Env.new([x3,x3,lo], [ts-f3,f3],'exp'),
			Env.new([x4,x4,lo], [ts-f4,f4],'exp'),
			Env.new([x5,x5,lo], [ts-f5,f5],'exp'),
			Env.new([x6,x6,lo], [ts-f6,f6],'exp'),
			Env.new([x7,x7,lo], [ts-f7,f7],'exp'),
			Env.new([x8,x8,lo], [ts-f8,f8],'exp'),
			//g
			Env.new([mid,(hi-lo).rand+lo], [g1],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g2],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g3],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g4],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g5],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g6],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g7],'exp'),
			Env.new([mid,(hi-lo).rand+lo], [g8],'exp'),
			//h
			Env.new([w1,w1,mid], [ts-h1,h1],'exp'),
			Env.new([w2,w2,mid], [ts-h2,h2],'exp'),
			Env.new([w3,w3,mid], [ts-h3,h3],'exp'),
			Env.new([w4,w4,mid], [ts-h4,h4],'exp'),
			Env.new([w5,w5,mid], [ts-h5,h5],'exp'),
			Env.new([w6,w6,mid], [ts-h6,h6],'exp'),
			Env.new([w7,w7,mid], [ts-h7,h7],'exp'),
			Env.new([w8,w8,mid], [ts-h8,h8],'exp'),
			//i
			Env.new([v1,v1, hi], [(ts/2)-i1,i1],'exponential'),
			Env.new([v2,v2, hi], [(ts/2)-i2,i2],'exponential'),
			Env.new([v3,v3, hi], [(ts/2)-i3,i3],'exponential'),
			Env.new([v4,v4, hi], [(ts/2)-i4,i4],'exponential'),
			Env.new([v5,v5, lo], [(ts/2)-i5,i5],'exponential'),
			Env.new([v6,v6, lo], [(ts/2)-i6,i6],'exponential'),
			Env.new([v7,v7, lo], [(ts/2)-i7,i7],'exponential'),
			Env.new([v8,v8, lo], [(ts/2)-i8,i8],'exponential'),
			//j
			Env.new([hi,hi,((hi-lo).rand)+lo], [ts/2,j1],'exponential'),
			Env.new([hi,hi,((hi-lo).rand)+lo], [ts/2,j2],'exponential'),
			Env.new([hi,hi,((hi-lo).rand)+lo], [ts/2,j3],'exponential'),
			Env.new([hi,hi,((hi-lo).rand)+lo], [ts/2,j4],'exponential'),
			Env.new([lo,lo,((hi-lo).rand)+lo], [ts/2,j5],'exponential'),
			Env.new([lo,lo,((hi-lo).rand)+lo], [ts/2,j6],'exponential'),
			Env.new([lo,lo,((hi-lo).rand)+lo], [ts/2,j7],'exponential'),
			Env.new([lo,lo,((hi-lo).rand)+lo], [ts/2,j8],'exponential'),

		];
		amps=
		[
			//a
			Env.new([0,1,1,0,0]*vol, [0.01,a1,0.01,ts-a1]),
			Env.new([0,1,1,0,0]*vol, [0.01,a2,0.01,ts-a2]),
			Env.new([0,1,1,0,0]*vol, [0.01,a3,0.01,ts-a3]),
			Env.new([0,1,1,0,0]*vol, [0.01,a4,0.01,ts-a4]),
			Env.new([0,1,1,0,0]*vol, [0.01,a5,0.01,ts-a5]),
			Env.new([0,1,1,0,0]*vol, [0.01,a6,0.01,ts-a6]),
			Env.new([0,1,1,0,0]*vol, [0.01,a7,0.01,ts-a7]),
			Env.new([0,1,1,0,0]*vol, [0.01,a8,0.01,ts-a8]),
			//b
			Env.new([0,1,1,0,0]*vol, [0.01,b1,0.01,ts-b1]),
			Env.new([0,1,1,0,0]*vol, [0.01,b2,0.01,ts-b2]),
			Env.new([0,1,1,0,0]*vol, [0.01,b3,0.01,ts-b3]),
			Env.new([0,1,1,0,0]*vol, [0.01,b4,0.01,ts-b4]),
			Env.new([0,1,1,0,0]*vol, [0.01,b5,0.01,ts-b5]),
			Env.new([0,1,1,0,0]*vol, [0.01,b6,0.01,ts-b6]),
			Env.new([0,1,1,0,0]*vol, [0.01,b7,0.01,ts-b7]),
			Env.new([0,1,1,0,0]*vol, [0.01,b8,0.01,ts-b8]),
			//c
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c1,0.01,c1,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c2,0.01,c2,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c3,0.01,c3,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c4,0.01,c4,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c5,0.01,c5,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c6,0.01,c6,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c7,0.01,c7,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-c8,0.01,c8,0.01,ts/2]),
			//d
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d1,0.01,ts/2-d1]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d2,0.01,ts/2-d2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d3,0.01,ts/2-d3]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d4,0.01,ts/2-d4]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d5,0.01,ts/2-d5]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d6,0.01,ts/2-d6]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d7,0.01,ts/2-d7]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2,0.01,d8,0.01,ts/2-d8]),
			//e
			Env.new([0,0,1,1,0]*vol, [ts-e1,0.01,e1,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e2,0.01,e2,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e3,0.01,e3,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e4,0.01,e4,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e5,0.01,e5,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e6,0.01,e6,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e7,0.01,e7,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-e8,0.01,e8,0.01]),
			//f
			Env.new([0,0,1,1,0]*vol, [ts-f1,0.01,f1,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f2,0.01,f2,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f3,0.01,f3,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f4,0.01,f4,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f5,0.01,f5,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f6,0.01,f6,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f7,0.01,f7,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-f8,0.01,f8,0.01]),
			//g
			Env.new([0,1,1,0,0]*vol, [0.01,g1,0.01,ts-g1]),
			Env.new([0,1,1,0,0]*vol, [0.01,g2,0.01,ts-g2]),
			Env.new([0,1,1,0,0]*vol, [0.01,g3,0.01,ts-g3]),
			Env.new([0,1,1,0,0]*vol, [0.01,g4,0.01,ts-g4]),
			Env.new([0,1,1,0,0]*vol, [0.01,g5,0.01,ts-g5]),
			Env.new([0,1,1,0,0]*vol, [0.01,g6,0.01,ts-g6]),
			Env.new([0,1,1,0,0]*vol, [0.01,g7,0.01,ts-g7]),
			Env.new([0,1,1,0,0]*vol, [0.01,g8,0.01,ts-g8]),
			//h
			Env.new([0,0,1,1,0]*vol, [ts-h1,0.01,h1,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h2,0.01,h2,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h3,0.01,h3,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h4,0.01,h4,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h5,0.01,h5,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h6,0.01,h6,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h7,0.01,h7,0.01]),
			Env.new([0,0,1,1,0]*vol, [ts-h8,0.01,h8,0.01]),
			//i
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i1,0.01,i1,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i2,0.01,i2,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i3,0.01,i3,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i4,0.01,i4,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i5,0.01,i5,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i6,0.01,i6,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i7,0.01,i7,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-i8,0.01,i8,0.01,ts/2]),
			//j
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j1,0.01,j1,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j2,0.01,j2,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j3,0.01,j3,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j4,0.01,j4,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j5,0.01,j5,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j6,0.01,j6,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j7,0.01,j7,0.01,ts/2]),
			Env.new([0,0,1,1,0,0]*vol, [ts/2-j8,0.01,j8,0.01,ts/2]),

		];
		Mix.fill(80, {arg i;
			SinOsc.ar(EnvGen.kr(envs.at(i)),0,EnvGen.kr(amps.at(i),doneAction: 2))})
})
);
(
s = Server.local.waitForBoot({
	s.scope(2);
	b = Buffer.alloc(s,1024,1);
	c = Buffer.alloc(s,1024,1);
	}
)
);
(
~fft={var in1,in2, chain,chain1,chain2,chaina;
	in1=~synthesis;
	chain=FFT(b, in1);
	chain=PV_MagMinus(chain2,chain1,MouseX.kr(0,1));
	IFFT(chain)}.play
);
fft.free;

	PV_MagMinus

-
x.free;


s.boot;
(
b = Buffer.alloc(s, 2048, 1);
c = Buffer.alloc(s, 2048, 1);
d = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01.wav");
)

(
SynthDef("help-magMinus", { arg out=0, bufnumA=0, bufnumB=1, soundBufnum=2;
    var inA, inB, chainA, chainB, chain;
	    inB = ~synthesis*(2);
	    inA = (0.04)*PinkNoise.ar;
    chainA = FFT(bufnumA, inA);
    chainB = FFT(bufnumB, inB);
	chainB = PV_MagSmear(chainB, MouseY.kr(0, 100));
    chain = PV_MagMinus(chainA, chainB, MouseX.kr(0, 1));
    Out.ar(out,  IFFT(chain).dup);
}).play(s,[\out, 0, \bufnumA, b.bufnum, \bufnumB, c.bufnum, \soundBufnum, d.bufnum]);
)
