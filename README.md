# Element-Scripter
A useful Mac utility which scans GUIs for scriptable elements and returns the scripting path of the element and descriptive information regarding the element. This allows for a developer to quickly gather information regarding which scriptable elements are available to accomplish the task they want to achieve.

Written in JXA for JXA programmers.

# Using the application:

1. Download Element Scripter.app.zip
2. Go to "System Preferences > Security & Privacy > Accessibility" and allow "Element Scripter" to 'control' your computer.
3. Run the software.
4. Choose the software you want to analyse from the list.
5. Choose the window you want to analyse from the list.

When ElementScripter has finished analysing your software's GUI elements it will create a new TextEdit document with all the GUI elements like this:

```
Address|Title|Name|Description|Help|Role|Enabled|Focused|Position|Size
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(0)|||close button||AXButton|true|false|38,27|14,16
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(1)|||full screen button|this button also has an action to zoom the window|AXButton|true|false|78,27|14,16
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(2)|||minimize button||AXButton|true|false|58,27|14,16
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(0)|||group||AXGroup||false|31,46|1336,1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(3)|||Fast Forward|fast forward|AXButton|true|false|636,810|42,38
Address|Title|Name|Description|Help|Role|Enabled|Focused|Position|Size|Value
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(0)|||close button||AXButton|true|false|7,26|14,16|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(1)|||full screen button|this button also has an action to zoom the window|AXButton|true|false|47,26|14,16|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(2)|||minimize button||AXButton|true|false|27,26|14,16|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(0)|||group||AXGroup||false|0,45|1631,1|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(3)|||Fast Forward|fast forward|AXButton|true|false|744,811|42,38|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(4)|||Play|play|AXButton|true|false|704,811|41,38|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(5)|||Rewind|rewind|AXButton|true|false|663,811|42,38|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(6)|||Resize Canvas|resize canvas|AXButton|true|false|11,811|41,38|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").buttons.at(7)|||Upload Manager||AXButton|true|false|1603,814|37,31|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").checkboxes.at(0)|||checkbox||AXCheckBox|true|false|1860,818|20,20|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").uiElements.at(10)|||Video View|preview|AXUnknown||true|0,46|1630,759|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(1)|||group||AXGroup||false|1630,45|1,760|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2)|||group|properties|AXGroup||false|1631,87|289,718|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).staticTexts.byName("Screen Recording")||Screen Recording|text||AXStaticText|true|false|1642,95|202,17|Screen Recording
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).menuButtons.at(0)|||menu button||AXMenuButton|true|false|1877,94|36,22|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).buttons.byName("+ Action")|+ Action|+ Action|button||AXButton|false|false|1803,93|67,25|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0)|||scroll area||AXScrollArea||false|1631,124|289,681|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).popUpButtons.at(0)|||pop up button|Controls which mouse pointer will be displayed.  Only works on Screen Recording clips.|AXPopUpButton|false|false|1720,217|143,22|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).checkboxes.byName("Show Keystrokes")|Show Keystrokes|Show Keystrokes|checkbox|Shows typing of keys during the Screen Recording.  Only works on Screen Recording clips.|AXCheckBox|false|false|1720,321|126,18|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).checkboxes.byName("Show Mouse Pointer")|Show Mouse Pointer|Show Mouse Pointer|checkbox|Shows the Mouse Pointer for the selected Screen Recording, if checked.  Otherwise, Mouse Pointer is hidden.  Only works on Screen Recording clips.|AXCheckBox|false|false|1636,134|159,18|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Keyboard:")||Keyboard:|text||AXStaticText|true|false|1658,323|58,17|Keyboard:
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).popUpButtons.at(1)|||pop up button|The effect to use on the Desktop when the mouse is clicked.  Only works on Screen Recording clips.|AXPopUpButton|false|false|1720,188|143,22|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Pointer:")||Pointer:|text||AXStaticText|true|false|1670,220|46,17|Pointer:
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Click Effect:")||Click Effect:|text||AXStaticText|true|false|1640,191|76,17|Click Effect:
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Opacity:")||Opacity:|text||AXStaticText|true|false|1668,249|48,17|Opacity:
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.at(4)|||text|Controls how visible the mouse pointer will be.  Only works on Screen Recording clips.|AXStaticText|false|false|1865,245|46,19|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).sliders.at(0)|||slider|Controls how visible the mouse pointer will be.  Only works on Screen Recording clips.|AXSlider|false|false|1723,249|134,15|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).sliders.at(0).valueIndicators.at(0)|||value indicator||AXValueIndicator||false|1722,249|15,15|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Pointer Zoom:")||Pointer Zoom:|text||AXStaticText|true|false|1637,162|79,17|Pointer Zoom:
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.at(6)|||text|How much to zoom the Mouse Pointer if it is visible.  Only works on Screen Recording clips.|AXStaticText|false|false|1865,159|46,19|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).sliders.at(1)|||slider|How much to zoom the Mouse Pointer if it is visible.  Only works on Screen Recording clips.|AXSlider|false|false|1723,162|134,17|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).sliders.at(1).valueIndicators.at(0)|||value indicator||AXValueIndicator||false|1722,163|15,15|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).checkboxes.byName("Sound on Click")|Sound on Click|Sound on Click|checkbox|Whether a sound is played when a click is detected in the Screen Recording.  Only works on Screen Recording clips.|AXCheckBox|false|false|1720,284|126,18|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).uiElements.at(14)|||disclosure triangle||AXDisclosureTriangle|true|false|1700,283|13,20|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Height")||Height|text||AXStaticText|true|false|1726,412|43,14|Height
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Position")||Position|text||AXStaticText|true|false|1797,412|56,22|Position
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.at(9)|||text|callout outline size|AXStaticText|false|false|1723,390|50,19|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).incrementors.at(0)|||stepper|Adjusts the height of the Keystroke display bar.|AXIncrementor|false|false|1773,389|15,22|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).incrementors.at(0).buttons.at(0)|||increment arrow button||AXButton|||1773,389|15,11|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).incrementors.at(0).buttons.at(1)|||decrement arrow button||AXButton|||1773,400|15,11|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.at(10)|||text|callout outline size|AXStaticText|false|false|1800,390|50,19|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).incrementors.at(1)|||stepper|Adjusts the position of the Keystroke display bar.|AXIncrementor|false|false|1850,389|15,22|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).incrementors.at(1).buttons.at(0)|||increment arrow button||AXButton|||1850,389|15,11|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).incrementors.at(1).buttons.at(1)|||decrement arrow button||AXButton|||1850,400|15,11|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).radioGroups.at(0)|||radio group||AXRadioGroup|false|false|1721,345|149,38|[object ObjectSpecifier]
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).radioGroups.at(0).radioButtons.byName("Show all keys")|Show all keys|Show all keys|radio button||AXRadioButton|false|false|1721,345|149,18|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).radioGroups.at(0).radioButtons.byName("Show only modifier keys")|Show only modifier keys|Show only modifier keys|radio button||AXRadioButton|false|false|1721,365|149,18|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).buttons.at(0)|||button|Open the Keystroke display options window|AXButton|false|false|1869,390|30,20|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.byName("Width:")||Width:|text||AXStaticText|true|false|1668,430|48,17|Width:
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).staticTexts.at(12)|||text|Controls how visible the mouse pointer will be.  Only works on Screen Recording clips.|AXStaticText|false|false|1865,426|46,19|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).sliders.at(2)|||slider|Controls how visible the mouse pointer will be.  Only works on Screen Recording clips.|AXSlider|false|false|1723,430|134,15|0.1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).sliders.at(2).valueIndicators.at(0)|||value indicator||AXValueIndicator||false|1722,430|15,15|0.1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").groups.at(2).scrollAreas.at(0).checkboxes.byName("Attached To Clip")|Attached To Clip|Attached To Clip|checkbox|Shows typing of keys during the Screen Recording.  Only works on Screen Recording clips.|AXCheckBox|false|false|1720,451|126,18|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0)|||scroll area|timeline|AXScrollArea||false|0,854|1920,222|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).scrollBars.at(0)|||scroll bar||AXScrollBar|true|false|1904,854|16,196|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).scrollBars.at(0).valueIndicators.at(0)|||value indicator||AXValueIndicator|||1910,855|9,173|0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).scrollBars.at(0).buttons.at(0)|||increment arrow button||AXButton|||1904,854|0,0|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).scrollBars.at(0).buttons.at(1)|||decrement arrow button||AXButton|||1904,854|0,0|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).scrollBars.at(0).buttons.at(2)|||increment page button||AXButton|||1910,1029|9,21|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).scrollBars.at(0).buttons.at(3)|||decrement page button||AXButton|||1910,854|9,1|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).sliders.at(0)|||slider|Zooms the timeline. Use the View menu item "Zoom Timeline to Fit" to quickly see everything in your timeline.|AXSlider|true|false|74,1055|160,17|2.2965880735216713
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).sliders.at(0).valueIndicators.at(0)|||value indicator||AXValueIndicator||false|91,1056|15,15|2.2965880735216713
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).staticTexts.byName("Duration: 57 secs")||Duration: 57 secs|text||AXStaticText|true|false|912,1056|97,14|Duration: 57 secs
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).buttons.at(0)|||Zoom Out||AXButton|true|false|52,1056|14,15|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).buttons.at(1)|||Zoom In||AXButton|true|false|242,1056|14,15|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).popUpButtons.at(0)|||pop up button|Add media to the timeline at the current scrubber position.|AXPopUpButton|true|false|16,1053|34,19|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).checkboxes.at(0)|||checkbox|Toggles audio waveforms on timeline clips.|AXCheckBox|true|false|1879,1052|20,20|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).checkboxes.at(1)|||checkbox|Toggles thumbnails on timeline clips.|AXCheckBox|true|false|1845,1052|20,20|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").scrollAreas.at(0).checkboxes.at(2)|||checkbox|Toggles snapping of the timeline scrubber and clips to other clips in the timeline.  This also controls snapping of clips in the canvas.|AXCheckBox|true|false|1811,1052|20,20|1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").menuButtons.byName("Edited")|Edited|Edited|document actions||AXMenuButton|false|false|976,25|53,17|
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").staticTexts.byName("—")||—|text||AXStaticText|false|false|957,25|18,17|—
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Untitled").staticTexts.byName("Untitled")||Untitled|text||AXStaticText|true|false|904,25|53,17|Untitled
```

As you can see the output is in a table format with '|' delimeters. This allows you to quickly search the produced information for relevant text, which could speed up your automation of applications.
