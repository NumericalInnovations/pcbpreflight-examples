-- This tutorial demonstrates FAB 3000 common dialogs

-- Single Input Dialog
local sYourName = fab3000.inputDialog( "Sample Input dialog...", "Enter Your Name:", 300, 150 )
if sYourName~=nil then 
	fab3000.princ( "Let me guess, your name is: " .. sYourName )
else
	fab3000.princ( "You Cancelled - No Name was given." )
end

-- Select One Text File
local sFile = fab3000.fileDialog( "Select A Single Text file...", "Text File (*.txt,*.doc)\nAll Files (*)" )
if sFile~=nil then
	fab3000.princ( "Text File Selected: " .. sFile )
else
	fab3000.princ( "You Cancelled - No File Selected." );
end

-- Select Multiple Gerber File(s)
myGerberFiles = fab3000.dbStringArray()
local nSelectedFileCount = fab3000.fileDialogMutipleFiles( "Select Multiple Gerber file(s)...", "Gerber File (*.gbr,*.gbx,*.ger,*.pho,*.x)\nAll Files (*)", myGerberFiles )
if nSelectedFileCount>0 then
	fab3000.princ( "Count of File(s) Selected: " .. nSelectedFileCount )
	for i = 0, nSelectedFileCount, 1 do
		fab3000.princ( "You Selected File: " .. myGerberFiles:index(i) )
	end
else
	fab3000.princ( "You Cancelled - No File Selected." );
end