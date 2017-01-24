//Element Scripter for specific programs.
//Add this script to a service and bind it to a keyboard shortcut for quick documentation of GUI elements.
//Great for complex applications which may have many GUIs

var procName = "Safari"
var wndID = 0

//SIMULATE EXIT-SUB WITH BREAK:
Script: {


	//Setup app for notifications.
	var app = Application.currentApplication()
	app.includeStandardAdditions = true

	//Setup system element processing.
	var system = Application('System Events')
	system.includeStandardAdditions = true

  //Get process
	var proc = system.applicationProcesses.byName(procName)

	//Get correct window
	var wnd = proc.windows[wndID]

	//Notify user that this may take a while
	app.displayNotification('Gathering GUI Elements from window "' + wnd.title() + '" of process "' + procName + '". This may take a while...', {
	  withTitle: 'Element Scripter',
	  //subtitle: 'Subtitle',
	  soundName: 'Sosumi'
	})

	var elements = wnd.entireContents()
	var a = []
	var s = "Address|Title|Name|Description|Help|Role|Enabled|Focused|Position|Size|Value"
	for(var i=0;i<elements.length;i++){
        //Try to get el, if cannot then Cannot get element
        try {
            var el = elements[i]
        } catch (e) {
            s = s + "Cannot get element\n"
            continue
        }

        cmds = [Automation.getDisplayString,el.title,el.name,el.description,el.help,el.role,el.enabled,el.focused,el.position,el.size,el.value]
        p = [];

        for(var j=0;j<cmds.length;j++){
            try{
                p.push(cmds[j](el))
            } catch (e) {
                p.push("'UNK'")
            }
        }

		s = s + "\n" + p.join("|")
	}

	var textEdit = Application("TextEdit");
	textEdit.activate()
	var newDoc = textEdit.Document().make();
	newDoc.text = s

	app.displayNotification('Elements from window "' + wnd.title() + '" of process "' + procName + '" have been extracted into text edit.', {
	  withTitle: 'Element Scripter',
	  soundName: 'Sosumi'
	})

	//EXIT-SUB
	break Script

//END-OF-SCRIPT
}
