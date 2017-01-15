//Compiled to application with Automator.


//SIMULATE EXIT-SUB WITH BREAK:
Script: {


	//Setup app for notifications.
	var app = Application.currentApplication()
	app.includeStandardAdditions = true

	//Setup system element processing.
	var system = Application('System Events')
	system.includeStandardAdditions = true



	var processes = system.processes()
	var procTitles = []
	for (var i = 0; i<processes.length; i++){
		if (processes[i].title() != null) {
			procTitles.push(i+1 + ': ' + processes[i].title())
		}
	}

	var procName = system.chooseFromList(procTitles,{ withPrompt: 'Which application do you want to analyse?' })[0]

	if (procName == undefined){
		//EXIT-SUB
		break Script
	}

	for (var i = 0; i<processes.length; i++){
		if (i+1 + ': ' + processes[i].title() == procName) {
			var proc = processes[i]
			break
		}
	}

	//Get correct window
	var windows = proc.windows()
	if (windows.length > 1){
		var wndTitles = []
		for (var i = 0; i<windows.length; i++){
			if (proc.windows[i].title() != null) {
				wndTitles.push(i+1 + ': ' + proc.windows[i].title())
			}
		}

		var wndName = system.chooseFromList(wndTitles,{ withPrompt: 'Which window do you want to analyse?' })[0]

		if (wndName == undefined){
			//EXIT-SUB
			break Script
		}

		for (var i = 0; i<windows.length; i++){
			if (i+1 + ': ' + proc.windows[i].title() == wndName) {
				var wnd = proc.windows[i]
				break
			}
		}

		//Remove "\d: " from start of wndName
		wndName = wndName.substr(3)
	} else if(windows.length == 1){
		var wnd = proc.windows[0]
		try {
			var wndName = wnd.title()
		} catch(e) {
			wndName = procName
		}
	} else {
		//Notify user that this may take a while
		app.displayNotification('Cannot find any windows of process ' + procName, {
			withTitle: 'Element Scripter',
			//subtitle: 'Subtitle',
			soundName: 'Sosumi'
		})
		//EXIT-SUB
		break Script
	}



	//Notify user that this may take a while
	app.displayNotification('Gathering GUI Elements from window "' + wndName + '" of process "' + procName + '". This may take a while...', {
	  withTitle: 'Element Scripter',
	  //subtitle: 'Subtitle',
	  soundName: 'Sosumi'
	})

	var elements = wnd.entireContents()
	var a = []
	var s = "Address|Title|Name|Description|Help|Role|Enabled|Focused|Position|Size|Value"
	for(var i=0;i<elements.length;i++){
		var el = elements[i]
		s = s + "\n" + [Automation.getDisplayString(el),el.title(),el.name(),el.description(),el.help(),el.role(),el.enabled(),el.focused(),el.position(),el.size(),el.value()].join("|")
	}

	var textEdit = Application("TextEdit");
	var newDoc = textEdit.Document().make();
	newDoc.text = s

	app.displayNotification('Elements from window "' + wndName + '" of process "' + procName + '" have been extracted into text edit.', {
	  withTitle: 'Element Scripter',
	  soundName: 'Sosumi'
	})

	//EXIT-SUB
	break Script

//END-OF-SCRIPT
}
