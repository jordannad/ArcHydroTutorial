---
layout: collection
title: Drainage Point Processing
---

##Background##

The Drainage Point Processing Tool creates points at the downstream end of each subbasin. 

Now we are ready to delineate the total area flowing into our specified outlet or ``pour point'' in ArcGIS terminology. Our outlet point was initially specified using latitude and longitude coordinates and was converted to a shapefile. However, the outlet point may not fall directly over the correct raster cell. The We need to `snap' the outlet so that it is coincident with the stream. This command snaps the stram gage point to an area of high flow accumulation within a distance that the user specifies.

<a href="/pictures/SnapPour.png"><img src="/pictures/SnapPour.png"></a>


##Steps##

1.Go to Terrain Preprocessing &#8594; Drainage Point Processing. Click OK. 

<a href="/pictures/DrainagePoint1.png"><img src="/pictures/DrainagePoint1.png"></a>

2.Click Save. 

3.Click and drag the NHD layer up the list of layers, just below the DrainageLine layer. 

4.Uncheck all layers except for the original DEM, Outlet.shp, the NHD layer, DrainageLine, and DrainagePoint.

5.Change the symbology of the NHD layer so that it is a thicker line and a different color than DrainageLine.  Compare the two streams for the watershed of interest.  Notice how accurately they overlap.  Notice if DrainageLine has extra streams or is missing NHD streams.  Also compare these streams to the USGS quad sheet streams.  

<a href="/pictures/DrainagePoint2.png"><img src="/pictures/DrainagePoint2.png"></a>

6.Zoom in very close the Outlet.shp layer, the one you created in Excel. Notice that it does not lie exactly on the DrainageLine. Why do you think that is?

<a href="/pictures/DrainagePoint3.png"><img src="/pictures/DrainagePoint3.png"></a>

7.Use the Measure Tool <a href="/pictures/MeasureTool.png"><img src="/pictures/MeasureTool.png"></a> in the Tools Toolbar to determine how far the coordinates for Outlet.shp are from the DrainageLine Layer. 

6.Click the Point Delineation Button on the right side of the ArcHydro Toolbar.

<a href="/pictures/ArcHydroToolbar.png"><img src="/pictures/ArcHydroToolbar.png"></a>

9.Click on the outlet point.

10.In the Point Delineation Box, make sure the entries look like the figure below.  Feel free to give your Watershed and Watershed Point entries meaningful names but the first 5 entries should match the figure below.

<a href="/pictures/PointDelineation.png"><img src="/pictures/PointDelineation.png"></a>

11.In the Snap Point Box, select Yes – Snap.

12.Select a value for the Snap Distance that is at least the distance from the outlet point to the DrainageLine Layer. The distance is in Number of cells, so if the drainage point is 900 meters from the DrainageLine Layer, and we know that  the DEM has a grid size of 10 meters, you should enter a value greater than the distance divided by the resolution (e.g., 900/10 = 90). Click OK.

<a href="/pictures/Snap.png"><img src="/pictures/Snap.png"></a>

<a href="/pictures/DrainagePoint3.png"><img src="/pictures/DrainagePoint4.png"></a>

Note: If you had just clicked on the DrainageLine Layer itself with the Point Delineation Tool, you wouldn’t have had to deal with the snapping issue
