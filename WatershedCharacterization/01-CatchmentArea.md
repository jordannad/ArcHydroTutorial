---
layout: collection
title: Catchment Area
---

Recall you used the polar planimeter in Exercise 1 to determine the area of the watershed.

<a href="/pictures/Planimeter.png"><img src="/pictures/Planimeter.png"></a>

To calculate the watershed area in GIS, do the following:

1.	Right click on the new Watershed polygon shapefile that was just created and click Open Attribute Table. As a shortcut, you can also click on the layer and click CTRL+T.

2.	Look at the value under Shape_Area. This should be the area of the watershed in square meters. Divide by 1,000,000 to convert to square kilometers.

<a href="/pictures/Area.png"><img src="/pictures/Area.png"></a>


Note: If the values for Shape_Area and Shape_Length are very small, it might mean that they are being reported in decimal degrees, which probably means you forgot to reproject the original DEM into a projected coordinate system.

*What are the sources of error in your estimate of the watershed area using ArcGIS?*