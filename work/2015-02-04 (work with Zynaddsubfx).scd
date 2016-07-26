
// work with zynaddsubfx

History.clear.end;

History.start;

u = Date.getDate.format("nxVacuity004-Inversion").postln;

"zynaddsubfx -L /home/neix/nx/zyn/nxZyn001.xiz -U".unixCmd;

"jack_connect zynaddsubfx:out_1 SuperCollider:in_1".unixCmd;
"jack_connect zynaddsubfx:out_2 SuperCollider:in_2".unixCmd;


MIDIClient.init;

"aconnect -i".unixCmd;
"aconnect 129:3 128:0".unixCmd;

n = MIDIOut(0);

~inlet.play;
~inlet = { SoundIn.ar([0,1])};

Server.default.recHeaderFormat = "WAV";

Server.default.recSampleFormat = "int16";

Server.default.prepareForRecord(u++".wav");


(
Server.default.record;
Tdef(\a, { var root = rrand(40,50),
	notesA = [root, root+1, root, root+1, root+5, root+6, root+5, root+6],tme = rrand(12,12), notesB = [root, root+1, root, root+1,root, root+1, root, root+1], notesC = [root+5, root+6, root+5, root+6,root+5, root+6, root+5, root+6];
	1.do({
	8.do({ |i|
		n.noteOn(16, notesA[i], 60);
		n.noteOn(16, notesA[i]-12, 60);
		tme.wait;
		n.noteOff(16, notesA[i], 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i], 60);
		n.noteOn(16, notesC[i], 60);
		tme.wait;
		n.noteOff(16, notesB[i], 60);
		n.noteOff(16, notesC[i], 60);
	});
	n.allNotesOff(16);
	8.do({ |i|
		n.noteOn(16, notesA[i]+2, 60);
		n.noteOn(16, notesA[i]-10, 60);
		tme.wait;
		n.noteOff(16, notesA[i]+2, 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i]+2, 60);
		n.noteOn(16, notesC[i]+2, 60);
		tme.wait;
		n.noteOff(16, notesB[i]+2, 60);
		n.noteOff(16, notesC[i]+2, 60);
	});
	n.allNotesOff(16);
	8.do({ |i|
		n.noteOn(16, notesA[i]+4, 60);
		n.noteOn(16, notesA[i]-8, 60);
		tme.wait;
		n.noteOff(16, notesA[i]+4, 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i]+4, 60);
		n.noteOn(16, notesC[i]+4, 60);
		tme.wait;
		n.noteOff(16, notesB[i]+4, 60);
		n.noteOff(16, notesC[i]+4, 60);
	});
	n.allNotesOff(16);
	8.do({ |i|
		n.noteOn(16, notesA[i]+6, 60);
		n.noteOn(16, notesA[i]-6, 60);
		tme.wait;
		n.noteOff(16, notesA[i]+6, 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i]+6, 60);
		n.noteOn(16, notesC[i]+6, 60);
		tme.wait;
		n.noteOff(16, notesB[i]+6, 60);
		n.noteOff(16, notesC[i]+6, 60);
	});
	n.allNotesOff(16);
	8.do({ |i|
		n.noteOn(16, notesA[i]+8, 60);
		n.noteOn(16, notesA[i]-4, 60);
		tme.wait;
		n.noteOff(16, notesA[i]+8, 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i]+8, 60);
		n.noteOn(16, notesC[i]+8, 60);
		tme.wait;
		n.noteOff(16, notesB[i]+8, 60);
		n.noteOff(16, notesC[i]+8, 60);
	});
	n.allNotesOff(16);
	8.do({ |i|
		n.noteOn(16, notesA[i]+10, 60);
		n.noteOn(16, notesA[i]-2, 60);
		tme.wait;
		n.noteOff(16, notesA[i]+10, 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i]+10, 60);
		n.noteOn(16, notesC[i]+10, 60);
		tme.wait;
		n.noteOff(16, notesB[i]+10, 60);
		n.noteOff(16, notesC[i]+10, 60);
	});
	n.allNotesOff(16);
	8.do({ |i|
		n.noteOn(16, notesA[i]+12, 60);
		n.noteOn(16, notesA[i], 60);
		tme.wait;
		n.noteOff(16, notesA[i]+12, 60);
	});
	8.do({ |i|
		n.noteOn(16, notesB[i]+12, 60);
		n.noteOn(16, notesC[i]+12, 60);
		tme.wait;
		n.noteOff(16, notesB[i]+12, 60);
		n.noteOff(16, notesC[i]+12, 60);
	});
	n.allNotesOff(16);
	});
	12.wait;
	Server.default.stopRecording;"killall zynaddsubfx".unixCmd;
	0.5.wait;
	History.end;
	0.5.wait;
	History.saveStory(u++".scd");
}).play;
)

Tdef(\a).stop;n.allNotesOff(16);




n.allNotesOff(16);
~inlet.end(0);

