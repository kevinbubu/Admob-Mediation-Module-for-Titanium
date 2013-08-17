var win = Ti.UI.createWindow({
	backgroundColor:'#fff'
});

var admob = require('chocolabs.admobmediation');

var banner = admob.createAdView({
    height:50,
    width:320,
    top:20,
    backgroundColor:'#000',
    publisherId:'<<ENTER_YOUR_ADMOB_MEDIATION_ID>>'
});
win.add(banner);

var medium = admob.createAdView({
    height:250,
    width:300,
    top:120,
    backgroundColor:'#000',
    publisherId:'<<ENTER_YOUR_ADMOB_MEDIATION_ID>>'
});
win.add(medium);

win.open();
