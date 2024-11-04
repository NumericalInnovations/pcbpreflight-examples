-- Export existing Drill data. Must have a Drill layer already displayed in FAB 3000

fab3000.beginWaitCursor()	
drillOut = fab3000.dbExportDrill()
drillOut:setExportFolder( "C:/tests/debug" )
drillOut:setJobName( "job" )

--Get All Layers
layers = fab3000.dbIntArray()
fab3000.dbGetAllLayerNumbers( layers )
local nTotal=layers:no()
fab3000.princ( "Export Layer Count: " .. nTotal )

--Make Loop for Layer Export
layer = fab3000.dbLayer()
local n=0
while n<nTotal do
	layer_num = layers:index( n )
	fab3000.dbGetLayer( layer_num, layer )
	-----------------
	nLayerType = layer:getType()
	if( nLayerType==fab3000.dbcLayerTypeDrillThruHole or nLayerType==fab3000.dbcLayerTypeDrillBlindBuried or nLayerType==fab3000.dbcLayerTypeDrillNonPlated ) then
		drillOut:addExportLayer( layer:getName() )
	end
	n = n+1
end

fab3000.uiFileExportDrill( drillOut )
fab3000.endWaitCursor()
fab3000.uiViewRedraw()