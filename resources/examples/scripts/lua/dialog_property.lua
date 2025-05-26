--Initialize Property Dialog and setup Rows
dlg = fab3000.dbDlgProperty()	
dlg:setWidth( 350 )
dlg:setHeight( 200 )
dlg:setTitle("My Property Table...")
dlg:setColumnWidth( 150 )

--Assign Property Combo Options
arBitmapArea = fab3000.dbStringArray()
arBitmapArea:append( "Extents" )
arBitmapArea:append( "Display" )

-- Add Property Rows
dlg:addPropertyRow( fab3000.dbcPropertyDlgCombo, "Bitmap Area:", "Extents", arBitmapArea )
dlg:addPropertyRow( fab3000.dbcPropertyDlgEdit, "Bitmap Resolution (DPI):", "1000", nil )

-- Display dialog
nResult = dlg:execute()
if nResult==0 then 
	fab3000.princ( "User Cancelled - Nothing to do." )
else
	sItem = dlg:getItemText( 0 )
	fab3000.princ( "First Item Selected: "..sItem )
	-----------------
	sItem1 = dlg:getItemText( 1 )
	fab3000.princ( "Second Item Selected: "..sItem1 )
end
