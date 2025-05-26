-- This tutorial demonstrates polygon creation and composite layers.

fab3000.dbSetUserUnits( fab3000.dbcInch )

--Create Layer #1
fab3000.uiEditAddLayer( "outside", 1 )

--Create Polygon 1
arPts = fab3000.dbPointArray()
arPts:appendPt( 1,1 )
arPts:appendPt( 3.5,1.1 )
arPts:appendPt( 3.6,4.0 )
arPts:appendPt( 2.0,3.2 )
arPts:appendPt( 1,3.5 )
arPts:appendPt( 1,1 )
fab3000.uiAddPolygon( 1, 0, arPts )

--Create Layer #2
fab3000.uiEditAddLayer( "inner", 2 )

--Create Polygon 2
arPts:clear()
arPts:appendPt( 2,1.5 )
arPts:appendPt( 3,2.0 )
arPts:appendPt( 3,3.0 )
arPts:appendPt( 2.2,3.0 )
arPts:appendPt( 2,1.5 )
fab3000.uiAddPolygon( 2, 0, arPts )

--Build Positive Composite Layer
arLayers = fab3000.dbIntArray()
arPolarity = fab3000.dbIntArray()
arLayers:append( 1 )
arLayers:append( 2 )
arPolarity:append( fab3000.dbcPolarityDark )
arPolarity:append( fab3000.dbcPolarityClear )
fab3000.uiToolsBuildCompositeLayers( "merged_pos", fab3000.dbcPolarityDark, arLayers, arPolarity )

--Build Negative Composite Layer
arLayers:clear()
arPolarity:clear()
arLayers:append( 1 )
arLayers:append( 2 )
arPolarity:append( fab3000.dbcPolarityClear )
arPolarity:append( fab3000.dbcPolarityDark )
fab3000.uiToolsBuildCompositeLayers( "merged_neg", fab3000.dbcPolarityClear, arLayers, arPolarity )

--Zoom All
fab3000.uiViewZoomAll()