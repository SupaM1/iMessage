set message to text returned of (display dialog "What would you like the message to say?" default answer "Hi")

tell application "Contacts"
	set contactNames to name of every person
end tell

set ContactChoice to choose from list contactNames
set ChosenContact to item 1 of ContactChoice

tell application "Contacts"
	set selectedPerson to first person whose name is ChosenContact
	set contactDetail to value of first phone of selectedPerson
end tell

tell application "Messages"
	activate
	send message to participant contactDetail
end tell
