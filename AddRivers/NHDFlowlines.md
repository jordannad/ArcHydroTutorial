---
layout: collection
title: Adding NHD Flowlines
---

In this section, you will add the NHD rivers.  Also, you will learn how to select objects and export them as separate shapefiles. 

38)	Click New Map File <a href="/pictures/NewFileIcon.png"><img src="/pictures/NewFileIcon.png"></a>.  You do not need to save the current file. 

39)	Add the DEM with the UTM projection.  Change the symbology of the DEM, if you would like.  Add “Outlet.shp.” 

40)	Right click on Layers.  Go to Properties &#8594; Coordinate System.  Notice that now the data frame is in the UTM coordinate system.

<a href="/pictures/SS23A.png"><img src="/pictures/SS23A.png"></a>


41)	Change the symbology of Outlet.shp by double-clicking on the actual point icon.  You can change the shape, size, and/ or color.  Click OK.

<a href="/pictures/SS23.png"><img src="/pictures/SS23.png"></a>

 
Figure 23. Symbol Selector.

42)	Go to File &#8594; Save as.  Save the file with an appropriate name.  Note that an ArcMap file has the file extension “.mxd.” 

Note:  When you add layers to ArcMap and click save, the layers are not actually saved with the file; layers are only pointed to.  In other words, it’s not the same as MS Office when you embed a photo in the Word document and the document becomes much larger.  You can add many layers in an ArcMap and the actual .mxd file will not become too big.  However, because layers are only pointed to, whenever you are sharing .mxd files you must always provide the raw data as well.


43)	Click the Add Data icon.  Navigate to NHD folder and add “NHDFlowline.shp.”  Right click on the layer name and navigate to Properties &#8594; Source. Note that the new shapefile is in a different coordinate system (geographic rather than projected).  

<a href="/pictures/SS24.png"><img src="/pictures/SS24.png"></a>


44)	You can manually change the order of layers by clicking and dragging the layer names on top of one another in the left margin.  In general, the order of layers from top to bottom by data type should be points, lines, polygons, and then surfaces (e.g., DEMs) at the bottom. 

45)	Right click on the newly added NHDFlowline layer. Click Zoom to Layer. Click “Go Back To Previous Extent” <a href="/pictures/BackPrevZoom.png"><img src="/pictures/BackPrevZoom.png"></a>.

46)	Right click on the NHDFlowline layer. Go to Selection &#8594; Make only this layer selectable.

<a href="/pictures/SS25.png"><img src="/pictures/SS25.png"></a>

Figure 25. Selection Drop-Down Menu.

48)	Click the Select Features icon  <a href="/pictures/SelectFeaturesIcon.png"><img src="/pictures/SelectFeaturesIcon.png"></a> .  Select all the parts, or reaches, of the NHD river in the watershed you are trying to delineate. You can select multiple sections by holding the Shift key.  You can also draw a box around the reaches are you trying to select.  To unselect a reach, simply click it again, or go to Selection drop-down menu &#8594; Clear Selected Features.  For completeness, make sure you have selected at least all reaches in the watershed, and also at least one extra reach downstream from Outlet.shp.  You may have to Zoom in to make sure you have selected everything. 

<a href="/pictures/SS26.png"><img src="/pictures/SS26.png"></a>

Figure 27. Select Features.

49)	Once all the relevant NHDFlowline features are selected, right click on the NHDFlowline layer.  Go to Data &#8594; Export Data. 

<a href="/pictures/SS27.png"><img src="/pictures/SS27.png"></a>

Figure 28. Data – Export Data.

50)	In the Export Data box, select “Use the same coordinate system as: the data frame,” and choose only to export selected features.  Choose an appropriate folder and shapefile name.  While it is not critical for the NHD to be in the same coordinate system as the DEM, it is good practice.  Click OK. 

<a href="/pictures/SS28.png"><img src="/pictures/SS28.png"></a>

Figure 29. Export Data.

51)	Click Yes when prompted to add the exported data to the map as a layer.  Note that this new NHD layer appears lying on top of the original NHDFlowline layer in a different color.

<a href="/pictures/SS29.png"><img src="/pictures/SS29.png"></a>

Figure 30. Add exported data to the map as a layer.

52)	Right click the original NHDFlowline layer name.  Go to Open Attribute Table.  These are all the data associated with this layer.  Each row, or attribute, in the table represents one segment of a stream.  You can actually select individual attributes by clicking the far left gray part of the row (similar to Excel).  You can multi-select by holding Shift or Ctrl. 

Note:  Attribute data are stored in the .dbf file of the shapefile, which can be opened from Windows Explorer.  However, you should not try to edit this .dbf file directly.

53)	Take note of the column or field name that has the names of the rivers.  In the example below, the field “GNIS_Name” contains the river names. 

<a href="/pictures/SS30.png"><img src="/pictures/SS30.png"></a>

Figure 31. Open Attribute Table.

54)	Right click the NHDFlowline layer name.  Go to Properties &#8594; Labels.  Check the upper left box for “Label features in this layer.”  Make sure the Text String Label Field is selected to the field that contains the river names. 

<a href="/pictures/SS31.png"><img src="/pictures/SS31.png"></a>

Figure 32. Labels.

55)	Click the Placement Properties button.  Make sure the Remove Duplicate Labels radio button is selected.  Click OK.  Click OK.  Close the attribute table. 

<a href="/pictures/SS32.png"><img src="/pictures/SS32.png"></a>
 
Figure 33. Label Placement Properties.

56)	Go to Selection drop-down menu &#8594; Clear Selected Features.

<a href="/pictures/SS33.png"><img src="/pictures/SS33.png"></a>

57)	Right click on the NHDFLowline layer and select Remove.

Note:  The Remove layer function does not actually delete the layer; it simply removes it from being associated with this ArcMap.

<a href="/pictures/SS34.png"><img src="/pictures/SS34.png"></a>

Figure 34. Remove layer
