# Admob Mediation Module for Titanium (include Admob/InMobi/Millennial Media)
v1.0

============================================
描述
============================================

* Admob Mediation是Google所提供的廣告中介平台，開發者如果想在App中放入不同家的廣告平台，可以透過Admob Mediation的後台依自己的需求來設定廣告投放的比例。

* 目前本模組只支援iOS, Android模組正在開發當中。

* 本模組支援以下廣告平台：
	* Admob (SDK 6.5.0)
	* Google AdSense (請直接在Admob後台設定)
	* InMobi (SDK 3.7.0)
	* Millennial Media (SDK 5.0.1)	
	
============================================
安裝方法
============================================

Step 1. 註冊相關帳號與id
======================

	1. Admob Mediation帳號註冊
		1-1. 前往Vpon Adwhirl後台註冊帳號 (http://med.adon.vpon.com/)
		1-2. 註冊完成後，點選"Add Application" 新增一個應用程式
		1-3. 點選上方"網站與應用程式"->"廣告聯播網中介服務"，新增"聯播網中介服務刊登位置"
		1-4. 輸入App名稱，平台選擇iOS，廣告大小選擇320*50，輪播時間可自行調整，輸入完成後按繼續
		1-5. 勾選欲投放的廣告輪播平台，並在最下方輸入ID (目前此模組僅支援AdMob Network & InMobi & Millennial Media)	
		
			
Step 2. 模組安裝
======================
	
	1. 先把chocolabs.admobmediation-iphone-1.0.zip解壓縮，
	
	2. 把chocolabs.admobmediation資料夾複製到/Users/<USER NAME>/Library/Application Support/Titanium/modules/iphone中即可


Step 3. 程式設定
======================

	1. 打開專案的tiapp.xml， 在Modules中新增chocolabs.admobmediation
	
	2. Clean Project
	
	3. 程式碼範例如下：
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

	4. 本模組目前支援四種尺寸，320*50, 300*250, 480*60, 728*90，只需調整View的width與height即可切換(可參考上方範例)
	
	

============================================
作者
============================================

Kevin Huang.
