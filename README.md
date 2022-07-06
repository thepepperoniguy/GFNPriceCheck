<h1 align="left">Awakened Poe Trade on Geforce Now (steam only)</h1>

###

<p align="left">Hey guys, recently I started playing POE on Geforce Now, where I thought price checking was impossible, until I found a workaround in a discussion on  @SnosMe's github <br>https://github.com/SnosMe/awakened-poe-trade/issues/170<br>you can check it out to find out more about the process<br><br>However, I found doing that process manually over and over again, a bit annoying, so I finally made this simple AHK script to automate that process.<br><br>I have to thank everyone that took part in the above discussion for making this possible, and u/TheUnseenForce for suggesting some improvements to the script. <br>https://youtu.be/az9wr7wHbME here's a showcase</p>

###

<h3 align="left">How to set this up</h3>

###

<p align="left">First of all, you need to have Path of Exile, AutoHotKey, and Awakened Poe Trade installed on your device<br>https://github.com/SnosMe/awakened-poe-trade<br>https://www.autohotkey.com/</p>

###

<div align="center">
  <img height="400" src="https://i.imgur.com/MyRtMfc.png"  />
</div>

###

<p align="left">Open Awakened Poe Trade settings (shift+space while focused on Path of Exile windows)<br>Go to Debug, and under "PoE window title" change the text from "Path of Exile" to "Google Chrome"<br>A restart for Awakened Poe Trade is required after this step</p>

###

<div align="center">
  <img height="200" src="https://i.imgur.com/aODInfi.png"  />
</div>

###

<p align="left">Open Google Chrome, right click on the upper side, and select "Name Window", here you will write "Google Chrome" so whatever tab you have opened, the chrome window title will always be named "Google Chrome", this is a very important step to make awakened poe trade work with chrome.<br><br>As SnosMe stated in this comment https://github.com/SnosMe/awakened-poe-trade/issues/170#issuecomment-946506421 , the next change we will have to make is in the path of exile Production_Config.ini file, which you can find here:<br>...\Documents\My Games\Path of Exile\production_Config.ini<br><br>Under [ACTION_KEYS] you will find the line<br>highlight=18<br>change it to "highlight=17"<br><br>We are getting closer to having the macro ready to use!<br><br>Launch Path of Exile in Geforce Now, using your steam account (you can link a steam to your path of exile account in case you don't already have this link)<br><br>Press Shift + Tab  to open the steam overlay <br>Go to Settings -> Web Browser and change the home page to http://dontpad.com/whateveryouwanthere, you should obviously change this link, maybe to something like:<br>http://dontpad.com/<your nickname+some random number><br><br>Go to Settings -> In-Game and replace the steam overlay key to F7, this is what I used in my script, if for some reason you use this keybind for anything else, replace it in both the script, and the overlay hotkey to whatever you like.</p>

###

<div align="center">
  <img height="200" src="https://i.imgur.com/HJpmlVf.png"  />
</div>

###

<div align="center">
  <img height="200" src="https://i.imgur.com/aAMe0n5.png"  />
</div>

###

<p align="left">Finally, you should make one last change to my script, which is replacing the default dontpad.com url to the one you chose eariler, as your steam browser default home page.<br><br>Sometimes dontpad will take a while to work, which will break the macro, in that case, give it a minute, and try again. This is the best I could do so far.<br><br>Hopefully someone more experienced with AHK</p>

###