-- This tutorial demonstrates Add Layer, Point Array & Polygon creation,
--  Copper Area Calculation, Selection Sets, and more.


--Set user units to inch.
fab3000.dbSetUserUnits( fab3000.dbcInch )

--Create Layer
fab3000.uiEditAddLayer( "metal", 1 )

--Create Outer Polygon
arPts = fab3000.dbPointArray()
arPts:appendPt( 0,0 )
arPts:appendPt( 2.5,0.1 )
arPts:appendPt( 2.6,3.0 )
arPts:appendPt( 1.0,2.2 )
arPts:appendPt( 0,2.5 )
arPts:appendPt( 0,0 )
fab3000.uiAddPolygon( 1, 0, arPts )

--Create Inner Polygon (notice its a clear composite)
arPts:clear()
arPts:appendPt( 1,0.5 )
arPts:appendPt( 2,1.0 )
arPts:appendPt( 2,2.0 )
arPts:appendPt( 1.2,2.0 )
arPts:appendPt( 1,0.5 )
fab3000.uiAddPolygon( 1, 1, arPts )

--Calculate Copper Area for layer
fCopperArea = fab3000.uiToolsCopperAreaCalculation( 1, fab3000.dbcInch )
fab3000.princ( "Copper Area for Layer 1: " .. fCopperArea .. " (sq. inch)" )

--Now Lets Increase Size & place on a new layer
sset = 	fab3000.dbSelectionSet()
nCount = sset:selectAll()

if nCount>1 then
	--Add New Layer
	fab3000.uiEditAddLayer( "metal_offset", 2 )

	--Copy select to new layer
	arCopyLayers = fab3000.dbIntArray()
	arCopyLayers:append( 2 )
	fab3000.uiEditCopyToLayers( sset, arCopyLayers )

	--Select objects on new layer 2
	sset:clear()
	sset:setLayerFilter( arCopyLayers )
	nCount = sset:selectAll()

	--Enlarge Objects by 0.1 inch
	fab3000.uiToolsEtchCompensation( sset, 0.1 )

	--Calculate new copper area
	fCopperArea = fab3000.uiToolsCopperAreaCalculation( 2, fab3000.dbcInch )
	fab3000.princ( "After Enlargment, Copper Area for Layer 2:" .. fCopperArea .. " (sq. inch)" )
end

--Zoom All
fab3000.uiViewZoomAll();