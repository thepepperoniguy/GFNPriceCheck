<h1 align="left">Awakened Poe Trade on Geforce Now (steam only)</h1>

###

<h3 align="left">Update</h3>

###

<p align="left">Made a short video tutorial, explaining how to set this script up for your pc, and make it work on any resolution.<br>https://youtu.be/Ch55zWZmXXI<br><br>We got a new update thanks to @gvieiraaa<br><br>- The window used to trick Awakened Poe Trade into thinking it's focused on the poe window now closes after using the woke poe trade price check.<br>- Fixed a bug that caused the [Space] key to be pressed for some reason at the beginning of the script.<br>- Fixed a bug that prevented the user to re-use the script to price-check another item, after the first use.</p>

###

<h3 align="left">How to set this up</h3>

###

<p align="left">Hey guys, recently I started playing POE on Geforce Now, where I thought price checking was impossible, until I found a workaround in a discussion on  @SnosMe's github <br>https://github.com/SnosMe/awakened-poe-trade/issues/170<br>you can check it out to find out more about the process<br><br>However, I found doing that process manually over and over again, a bit annoying, so I finally made this simple AHK script to automate that process.</p>

###

<p align="left">First of all, you need to have AutoHotKey, and Awakened Poe Trade installed on your device<br>https://github.com/SnosMe/awakened-poe-trade<br>https://www.autohotkey.com/</p>

###

<p align="left">As SnosMe stated in this comment https://github.com/SnosMe/awakened-poe-trade/issues/170#issuecomment-946506421 , we will have to change the Production_Config.ini file, which you can find here:<br>...\Documents\My Games\Path of Exile\production_Config.ini<br><br>Under [ACTION_KEYS] you will find the line<br>highlight=18<br>change it to "highlight=17"<br><br>In case you do not have Path of Exile installed on your device, just create the following folders in \Documents<br>My Games\Path of Exile<br>inside, create "production_Config.ini" file, open it with any text editor and write the following 2 lines inside<br><br>[ACTION_KEYS] <br>highlight=17<br><br>then save it<br><br>Launch Path of Exile in Geforce Now, using your steam account (you can link steam to your path of exile account in case you don't already have this link)<br><br>Press Shift + Tab  to open the steam overlay <br>Go to Settings -> Web Browser and change the home page to http://dontpad.com/whateveryouwanthere, you should obviously change this link, maybe to something like:<br>http://dontpad.com/<your nickname+some random number><br><br>Go to Settings -> In-Game and replace the steam overlay key to F7, this is what I used in my script, if for some reason you use this keybind for anything else, replace it in both the script, and the overlay hotkey to whatever you like.</p>

###

<div align="center">
  <img height="200" src="https://i.imgur.com/aAMe0n5.png"  />
</div>

###

<div align="center">
  <img height="200" src="https://i.imgur.com/HJpmlVf.png"  />
</div>

###

<p align="left">Finally, you should make one last change to my script, which is replacing the default dontpad.com url to the one you chose eariler, as your steam browser default home page:<br>user_chosen_site := "http://dontpad.com/whatever"<br><br>Sometimes dontpad will take a while to work, which will break the macro, in that case, give it a minute, and try again. This is the best I could do so far.<br><br>Hopefully someone more experienced with AHK will see this and make some suggestions</p>

###

<h3 align="left">Known Issues</h3>

###

<p align="left">1. The script sometimes sends [Space] key at the start, which in my case is the Flame Dash keybind (using space instead mouse middle button click).<br>2. Sometimes the macro breaks at some point, and either pastes wrong data on dontpad, just close the "Path of Exile" fake window that contains the item data, and try again<br>3. Sometimes dontpad might fail to load, I can't do anything about this, unles we find an alternative to store the item data. Give it a minute and try again, reload the script if it breaks.<br>4. Sometimes the script works fine to the point where it opens the fake "Path of Exile" window, but fails to send ctrl+D to start the price checking macro (awakened poe trade). At this point you can alt tab out of that window, alt tab back to it, select the text and press Ctrl+D yourself, or you can just close the window and retry my macro.<br><br>I assume these issues are caused by wrong timing, currently trying to fix them.</p>

###

<h3 align="left">Thanks to the following people for making this possible/easier!</h3>

###

<p align="left">- everyone that took part in this discussion https://github.com/SnosMe/awakened-poe-trade/issues/170<br>- u/TheUnseenForce <br>- u/Gvieira</p>

###
Profile Readme Generator
