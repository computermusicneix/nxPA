
// nxI005M

"zynaddsubfx -l /home/neix/nx/zyn/nxZyn001.xmz".unixCmd;

"jack_connect zynaddsubfx:out_1 SuperCollider:in_1".unixCmd;
"jack_connect zynaddsubfx:out_2 SuperCollider:in_2".unixCmd;

MIDIClient.init();

n = MIDIOut(0);
n.connect(1);

~inlet.play;
~inlet = { SoundIn.ar([0,1])};

// Melody

(
Tdef(\a, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5)];
	loop({
		4.do({
	4.do({ |i|
		n.noteOn(4, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(4, array[i]);
		n.allNotesOff(4);
		0.01.wait
			});
			});
		array[rrand(0,3)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\a).stop; n.allNotesOff(0);

(
Tdef(\c, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5)];
	loop({
		4.do({
	4.do({ |i|
		n.noteOn(2, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(2, array[i]);
		n.allNotesOff(2);
		0.01.wait
			});
			});
		array[rrand(0,3)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\c).stop; n.allNotesOff(2);


// Arpeggios

(
Tdef(\b, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1)];
	loop({
		4.do({
8.do({ |i|
		n.noteOn(3, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(3, array[i]);
		0.01.wait
			});
			});
		array[rrand(0,7)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\b).stop; n.allNotesOff(3);

(
Tdef(\d, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.05,0.1),rrand(0.5,0.1),rrand(0.05,0.1),rrand(0.05,0.1)];
	loop({
		4.do({
8.do({ |i|
		n.noteOn(3, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(3, array[i]);
		0.01.wait
			});
			});
		array[rrand(0,7)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\d).stop; n.allNotesOff(3);

NXRec.a;
NXRec.b;

NXRec.c;

////// Only melody

"zynaddsubfx -l /home/neix/nx/zyn/nxZyn001.xmz".unixCmd;

"jack_connect zynaddsubfx:out_1 SuperCollider:in_1".unixCmd;
"jack_connect zynaddsubfx:out_2 SuperCollider:in_2".unixCmd;

MIDIClient.init();

n = MIDIOut(0);
n.connect(1);

~inlet.play;
~inlet = { SoundIn.ar([0,1])};

(
Tdef(\a, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5)];
	loop({
		4.do({
	4.do({ |i|
		n.noteOn(0, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(0, array[i]);
		n.allNotesOff(0);
		0.01.wait
			});
			});
		array[rrand(0,3)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\a).stop; n.allNotesOff(0);

(
Tdef(\b, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5)];
	loop({
		4.do({
	4.do({ |i|
		n.noteOn(2, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(2, array[i]);
		n.allNotesOff(2);
		0.01.wait
			});
			});
		array[rrand(0,3)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\b).stop; n.allNotesOff(2);

(
Tdef(\c, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5)];
	loop({
		4.do({
	4.do({ |i|
		n.noteOn(4, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(4, array[i]);
		n.allNotesOff(4);
		0.01.wait
			});
			});
		array[rrand(0,3)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\c).stop; n.allNotesOff(4);

(
Tdef(\d, { var array = [rrand(50,62),rrand(50,62),rrand(50,62),rrand(50,62)],
	array2 = [rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5),rrand(2.5,3.5)];
	loop({
		4.do({
	4.do({ |i|
		n.noteOn(6, array[i], 127);
			array[i].postln;
				array2[i].wait;
		n.noteOff(6, array[i]);
		n.allNotesOff(6);
		0.01.wait
			});
			});
		array[rrand(0,3)] = rrand(50,62);
	})
}).play(quant:rrand(2.0,12.0))
)

Tdef(\d).stop; n.allNotesOff(6);

