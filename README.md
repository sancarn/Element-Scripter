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
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(4)|||Play|play|AXButton|true|false|596,810|41,38
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(5)|||Rewind|rewind|AXButton|true|false|555,810|42,38
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").buttons.at(6)|||Resize Canvas|resize canvas|AXButton|true|false|42,810|41,38
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").checkboxes.at(0)|||checkbox||AXCheckBox|true|false|1596,817|20,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").uiElements.at(9)|||Video View|preview|AXUnknown||true|31,47|1335,757
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(1)|||group||AXGroup||false|1366,46|1,758
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2)|||group|properties|AXGroup||false|1367,88|289,716
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).scrollAreas.at(0)|||scroll area||AXScrollArea||false|1367,120|289,628
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).staticTexts.byName("Media Library")||Media Library|text||AXStaticText|true|false|1391,95|200,17
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).checkboxes.at(0)|||checkbox||AXCheckBox|true|false|1375,98|214,12
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).textFields.at(0)|||search text field||AXTextField|true|false|1597,93|55,22
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).textFields.at(0).buttons.at(0)|||button||AXButton|true|false|1596,92|25,22
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).buttons.byName("Add Recording...")|Add Recording...|Add Recording...|button|Add an additional screen recording to your document|AXButton|true|false|1534,777|111,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).buttons.byName("Add Media...")|Add Media...|Add Media...|button|Add a media file to your document|AXButton|true|false|1378,777|111,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).sliders.at(0)|||slider|Sets the zoom amount for the thumbnail icons.|AXSlider|true|false|1419,755|107,15
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).sliders.at(0).valueIndicators.at(0)|||value indicator||AXValueIndicator||false|1454,755|15,15
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).staticTexts.byName("Zoom:")||Zoom:|text||AXStaticText|true|false|1376,755|38,14
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).radioGroups.at(0)|||radio group|Selects the display mode.|AXRadioGroup|true|false|1578,752|67,19
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).radioGroups.at(0).radioButtons.at(0)|||icon view||AXRadioButton|true|false|1578,752|34,19
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).radioGroups.at(0).radioButtons.at(1)|||list view||AXRadioButton|true|false|1612,752|33,19
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").groups.at(2).menuButtons.at(0)|||menu button|Sets additional display options.|AXMenuButton|true|false|1528,749|48,25
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0)|||scroll area|timeline|AXScrollArea||false|31,853|1625,194
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).scrollBars.at(0)|||scroll bar||AXScrollBar|true|false|1640,853|16,168
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).scrollBars.at(0).valueIndicators.at(0)|||value indicator||AXValueIndicator|||1646,854|9,146
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).scrollBars.at(0).buttons.at(0)|||increment arrow button||AXButton|||1640,853|0,0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).scrollBars.at(0).buttons.at(1)|||decrement arrow button||AXButton|||1640,853|0,0
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).scrollBars.at(0).buttons.at(2)|||increment page button||AXButton|||1646,1001|9,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).scrollBars.at(0).buttons.at(3)|||decrement page button||AXButton|||1646,853|9,1
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).sliders.at(0)|||slider|Zooms the timeline. Use the View menu item "Zoom Timeline to Fit" to quickly see everything in your timeline.|AXSlider|true|false|105,1026|160,17
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).sliders.at(0).valueIndicators.at(0)|||value indicator||AXValueIndicator||false|104,1027|15,15
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).staticTexts.byName("Duration: 5 secs")||Duration: 5 secs|text||AXStaticText|true|false|799,1027|90,14
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).buttons.at(0)|||Zoom Out||AXButton|true|false|83,1027|14,15
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).buttons.at(1)|||Zoom In||AXButton|true|false|273,1027|14,15
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).popUpButtons.at(0)|||pop up button|Add media to the timeline at the current scrubber position.|AXPopUpButton|true|false|47,1024|34,19
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).checkboxes.at(0)|||checkbox|Toggles audio waveforms on timeline clips.|AXCheckBox|true|false|1615,1023|20,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).checkboxes.at(1)|||checkbox|Toggles thumbnails on timeline clips.|AXCheckBox|true|false|1581,1023|20,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").scrollAreas.at(0).checkboxes.at(2)|||checkbox|Toggles snapping of the timeline scrubber and clips to other clips in the timeline.  This also controls snapping of clips in the canvas.|AXCheckBox|true|false|1547,1023|20,20
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").images.byName("Test2")|Test2|Test2|image||AXImage|true|false|816,27|16,16
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").menuButtons.at(0)|||document actions||AXMenuButton|false|false|871,26|10,17
Application("System Events").applicationProcesses.byName("ScreenFlow").windows.byName("Test2").staticTexts.byName("Test2")||Test2|text||AXStaticText|true|false|834,26|37,17
```

As you can see the output is in a table format with '|' delimeters. This allows you to quickly search the produced information for relevant text, which could speed up your automation of applications.
