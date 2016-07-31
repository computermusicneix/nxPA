MIDIClient.init();

n = MIDIOut(0);
n.connect(1);

~inlet.play;
~inlet = { SoundIn.ar([0,1])};

(
Tdef(\b, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1)];
	loop({
		4.do({
8.do({ |i|
		n.noteOn(0, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(0, array[i]);
		0.05.wait
			});
			});
		array[rrand(0,7)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\b).stop; n.allNotesOff(0);

/////////// arpeggio

a = Scale.choose;

(
Tdef(\a, {
	var root = rrand(40,50),
	len = rrand(4,24),
	melody = Array.fill(len, { root + a[rrand(0,6)] }),
	vel = Array.fill(len, { rrand(60,127) }),
	tempo = rrand(0.04,0.08);
	n.allNotesOff(0);
	loop({
		len.do({|i|
			n.noteOn(0, melody[i], vel[i]);
			tempo.wait;
			n.noteOff(0, melody[i]);
			tempo.wait
		})
	})
})
)

Tdef(\a).play;
Tdef(\a).stop; n.allNotesOff(0);

// arp

/////////// arpeggio

MIDIClient.init();

n = MIDIOut(0);
n.connect(1);

~inlet.play;
~inlet = { SoundIn.ar([0,1])};

a = Scale.choose;
b = rrand(0.04,0.08);
c = rrand(4,24);

d = [0,2].choose;

(
Tdef(\a, {
	var root = rrand(40,50),
	melody = Array.fill(c, { root + a[rrand(0,6)] }),
	vel = Array.fill(c, { rrand(60,127) }),
	reps = rrand(2,4);
	n.allNotesOff(d);
	melody.postln;
	loop({
		melody[rrand(d,c-1)] = root + a[rrand(0,6)];
		melody.postln;
		reps.do({
		c.do({|i|
			n.noteOn(d, melody[i], vel[i]);
			b.wait;
			n.noteOff(d, melody[i]);
			b.wait
		})
		})
	})
})
)

Tdef(\a).play;
Tdef(\a).stop; n.allNotesOff(d);

// pad

(
Tdef(\p, {
	var root = rrand(40,50),
	melody = Array.fill(c, { root + a[rrand(0,6)] }),
	vel = Array.fill(c, { rrand(60,127) }),
	reps = rrand(48,88),
	change = rrand(48,88);
	n.allNotesOff(1);
	melody.postln;
	loop({
		melody[rrand(0,c-1)] = root + a[rrand(0,6)];
		melody.postln;
		reps.do({
			(c/2).do({|i|
			n.noteOn(1, melody[i], vel[i]);
				(change * b).wait;
			n.noteOff(1, melody[i]);
				(change * b).wait
		})
		})
	})
})
)

Tdef(\p).play;
Tdef(\p).stop; n.allNotesOff(1);

NXRec.a;
NXRec.b;
NXRec.c;

////////////////////////////////////////////////////

/////////// arpeggio

MIDIClient.init();

n = MIDIOut(0);
n.connect(1);

~inlet.play;
~inlet = { SoundIn.ar([0,1])};

a = Scale.choose;
b = rrand(0.04,0.08);
c = rrand(4,24);

d = [0,2].choose;

(
Tdef(\a, {
	var root = rrand(40,50),
	melody = Array.fill(c, { root + a[rrand(0,6)] }),
	vel = Array.fill(c, { rrand(60,127) }),
	reps = rrand(2,4);
	n.allNotesOff(d);
	melody.postln;
	loop({
		melody[rrand(d,c-1)] = root + a[rrand(0,6)];
		melody.postln;
		reps.do({
		c.do({|i|
			n.noteOn(d, melody[i], vel[i]);
			b.wait;
			n.noteOff(d, melody[i]);
			b.wait
		})
		})
	})
})
)

Tdef(\a).play;
Tdef(\a).stop; n.allNotesOff(d);

/////////// arpeggio2

e = [0,0].choose;

(
Tdef(\b, {
	var root = rrand(40,50),
	melody = Array.fill(c, { root + a[rrand(0,6)] }),
	vel = Array.fill(c, { rrand(60,127) }),
	reps = rrand(2,4);
	n.allNotesOff(e);
	melody.postln;
	loop({
		melody[rrand(e,c-1)] = root + a[rrand(0,6)];
		melody.postln;
		reps.do({
		c.do({|i|
			n.noteOn(e, melody[i], vel[i]);
			b.wait;
			n.noteOff(e, melody[i]);
			b.wait
		})
		})
	})
})
)

Tdef(\b).play;
Tdef(\b).stop; n.allNotesOff(e);