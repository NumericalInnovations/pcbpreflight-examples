-- Import Gerber and Drill Files. 

gbrIn = fab3000.dbImportGerber()
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Sp0128.pho", fab3000.dbcLayerTypePasteTop )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Sst0126.pho", fab3000.dbcLayerTypeSilkTop )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Sm0128.pho", fab3000.dbcLayerTypeMaskTop )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Art0121.pho", fab3000.dbcLayerTypeTop )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/gnd2530.pho", fab3000.dbcLayerTypeNegPlane )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Pgp2529.pho", fab3000.dbcLayerTypeNegPlane )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Art02.pho", fab3000.dbcLayerTypeBottom )
gbrIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Sm0227.pho", fab3000.dbcLayerTypeMaskBot )
fab3000.uiFileImportGerber( gbrIn )

--Import Drill File
drillIn = fab3000.dbImportDrill()
drillIn:setJobName( "job" )
drillIn:addFileName( "C:/Numerical Innovations/Fab3000V6/examples/274X/Drill.drl" )
fab3000.uiFileImportDrill( drillIn )
