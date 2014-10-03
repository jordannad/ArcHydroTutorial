---
layout: collection
title: Contour Maps
---

ArcGIS provides tools to transform raster data such as our DEM into vector data. 

To create a contour map from a DEM:

1. Within ArcToolbox, open Spatial Analyst Tools &#8594; Surface &#8594; Contour 

    <a href="{{ site.url }}/pictures/Contour1.png"><img src="{{ site.url }}/pictures/Contour1.png"></a>

2. For the input raster, select the clipped DEM raster. Name your output polyline (vector) features something appropriate. 

    <a href="{{ site.url }}/pictures/Contour2.png"><img src="{{ site.url }}/pictures/Contour2.png"></a> 

    The contour lines are generated based on the z-values in the input raster, which are often measured in units of meters or feet. With the default value of 1, the contours will be in the same units as the z-values of the input raster (meters). If your DEM has elevation units of meters and you want to generate contour lines in units of feet, set the z_factor to 3.2808 (since 1 m = 3.2808 ft). **You should choose a z factor such that your contours will have the same units as your USGS quad sheet.**

    Set the base contour to an appropriate value based on your QUAD sheet. 

    <a href="{{ site.url }}/pictures/Contour4.png"><img src="{{ site.url }}/pictures/Contour4.png"></a> 


 3. Right click on your newly created polyline layer &#8594; Properties &#8594; Labels. Check the upper left box for “Label features in this layer.”  Make sure the Text String Label Field is set to the 'Contour' field. 

     <a href="{{ site.url }}/pictures/Contour3.png"><img src="{{ site.url }}/pictures/Contour3.png"></a> 

     You can improve the appearance of the map by altering the placement properties of the contour labels. The next section will also discuss the addition of a title, scale, legend and north arrow to your map.

*How do your contours compare to those on your USGS Quad Sheet?* 