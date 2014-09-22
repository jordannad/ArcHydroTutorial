---
layout: collection
title: Reprojection in ArcGIS
---

19.	Look at the map below and determine which Universal Transverse Mercator (UTM) section of the US your watershed is in.  For example, the state of Nevada is in UTM 11, and because it is the northern hemisphere it is UTM 11N.  You may want to go back to the USGS National Map Viewer website to see in which UTM section the watershed lies.

    <a href="{{ site.url }}/pictures/SS12.png"><img src="{{ site.url }}/pictures/SS12.png"></a>

20.	From ArcGIS, right click on the DEM layer name and go to Properties &#8594; Source tab.  Scroll down to the Spatial Reference, and note what it is.  If you are using the 10m DEM, the Spatial Reference is GCS_North_American_1983.  Click OK. 

    <a href="{{ site.url }}/pictures/SS13.png"><img src="{{ site.url }}/pictures/SS13.png"></a>

21.	Make sure ArcToolbox is visible.  Click on the Show/Hide ArcToolbox Window icon if necessary.  Navigate to Data Management Tools &#8594; Projections and Transformations &#8594; Raster.  Double click Project Raster. 

22.	Click the down arrow in the Input raster box and select the DEM. 

    <a href="{{ site.url }}/pictures/SS14.png"><img src="{{ site.url }}/pictures/SS14.png"></a>

23. Note the *“Input coordinate system”* is the same as the Spatial Reference found in the Layer Properties  Source tab.  For the 10m and 30m DEMs, the Input coordinate system is the North American Datum (NAD) 1983. This is the actual projection of the DEM.  In the example above, the DEM is in Geographic Coordinate System World Geodetic System 1984 (GCS_WGS_1984).  We want to project the DEM into a Projected Coordinate System so that we will be able to take measurements in ArcMap (using the Measure Tool, for example) in meters or kilometers instead of in decimal degrees, and so that our watershed area is calculated in meters squared as opposed to decimal degrees squared.  Rename the Output raster. 

    Note:  It is very important to realize that this layer already has a coordinate system assigned to it.  If it did not have a coordinate system or projection assigned to it, we would first determine what it is, then use the Define Projection Tool, before we could reproject.  Please take a few minutes and read online a bit more about coordinate systems and projections.

24.	Click on the Select Output Coordinate System button 

25.	Double click the “Projected Coordinate Systems” folder.  Double click the “Utm” folder. 

     <a href="{{ site.url }}/pictures/SS16.png"><img src="{{ site.url }}/pictures/SS16.png"></a>

26.	Double click on the projection you would like to project the DEM into, determined from the step above by looking at the US UTM map.  For example, if you were using a 10m NED DEM and your watershed was located in Nevada, you would select “NAD 1983 UTM Zone 11N.prj” in the Utm &#8594; Nad 1983 folder. Click OK.

27.	Click OK. 

28.	Note that the data frame is always set to the coordinate system of the first layer that is brought in.  Thus, your data frame is still in “GCS_North_America_1983. You can see this by right clicking on the word Layers &#8594; Properties &#8594; Coordinate System tab. 

    <a href="{{ site.url }}/pictures/SS17.png"><img src="{{ site.url }}/pictures/SS17.png"></a>

29. You can turn on/off layers by clicking the check mark next to the layer.  You can see that the new reprojected DEM lies on top of the original DEM even though it is in a different projection.  This is because ArcGIS performs a so-called “reprojection-on-the-fly,” which automatically allows layers in different projections to overlay one another. Keep this ArcGIS file open. 

    Note:  If you ever have trouble reprojecting a layer, try using ArcToolbox in ArcCatalog instead of ArcMap.  Also, if ArcGIS ever has problems loading your layers or it appears as though a layer is not fully loaded, you can click the Refresh icon in the bottom left of ArcMap.
