/* 
 This file was generated by Dashcode.  
 You may edit this file to customize your widget or web page 
 according to the license.txt file included in the project.
 */

var sleepInterval;

//
// Function: load()
// Called by HTML body element's onload event when the widget is ready to start
//
function load() {

    dashcode.setupParts();
    
    if (getStatus()){
        document.getElementById("button").object.textElement.innerText = "Hide";
	} else {
		document.getElementById("button").object.textElement.innerText = "Show";
	}
}

//
// Function: remove()
// Called when the widget has been removed from the Dashboard
//
function remove() {
    // Stop any timers to prevent CPU usage
    // Remove any preferences as needed
    // widget.setPreferenceForKey(null, dashcode.createInstancePreferenceKey("your-key"));
}

//
// Function: hide()
// Called when the widget has been hidden
//
function hide() {

}

//
// Function: show()
// Called when the widget has been shown
//
function show() {
    
    if (getStatus()){
        document.getElementById("button").object.textElement.innerText = "Hide";
	} else {
		document.getElementById("button").object.textElement.innerText = "Show";
	}
}

//
// Function: sync()
// Called when the widget has been synchronized with .Mac
//
function sync() {
    // Retrieve any preference values that you need to be synchronized here
    // Use this for an instance key's value:
    // instancePreferenceValue = widget.preferenceForKey(null, dashcode.createInstancePreferenceKey("your-key"));
    //
    // Or this for global key's value:
    // globalPreferenceValue = widget.preferenceForKey(null, "your-key");
}

//
// Function: showBack(event)
// Called when the info button is clicked to show the back of the widget
//
// event: onClick event from the info button
//
function showBack(event) {
    var front = document.getElementById("front");
    var back = document.getElementById("back");

    if (window.widget) {
        widget.prepareForTransition("ToBack");
    }

    front.style.display = "none";
    back.style.display = "block";

    if (window.widget) {
        setTimeout('widget.performTransition();', 0);
    }
}

//
// Function: showFront(event)
// Called when the done button is clicked from the back of the widget
//
// event: onClick event from the done button
//
function showFront(event) {
    var front = document.getElementById("front");
    var back = document.getElementById("back");

    if (window.widget) {
        widget.prepareForTransition("ToFront");
    }

    front.style.display="block";
    back.style.display="none";

    if (window.widget) {
        setTimeout('widget.performTransition();', 0);
    }
}

function openLink() {
	widget.openURL('http://web.me.com/hansen.m');
}

function toggleHiddenfiles(event) {
	var status = getStatus();
	if (status){
		widget.system("/usr/bin/defaults write com.apple.finder AppleShowAllFiles FALSE", null);
		document.getElementById("button").object.textElement.innerText = "Show";	
	} else {
		widget.system("/usr/bin/defaults write com.apple.finder AppleShowAllFiles TRUE", null);
		document.getElementById("button").object.textElement.innerText = "Hide";
	}
    
    widget.system("/usr/bin/osascript -e 'tell application \"Finder\" to quit'" , null);
    sleepInterval = setInterval("launchFinder()",1000);
}

function launchFinder() {
    widget.system("/usr/bin/osascript -e 'tell application \"Finder\" to launch'" , null);
    clearInterval(sleepInterval);
    sleepInterval = null;
}


function getStatus() {
	var readplist = widget.system("/usr/bin/defaults read com.apple.finder AppleShowAllFiles", null).outputString;
	
	if (readplist == "TRUE\n"){
		return true;
	} else {
		return false;
    }
}

if (window.widget) {
    widget.onremove = remove;
    widget.onhide = hide;
    widget.onshow = show;
    widget.onsync = sync;
}