---
layout: collection
title: Catchment Slope
---

The Slope tool calculates the maximum rate of change between each cell and its neighbors, much like in the Flow Direction section. Every cell in the output raster has a slope value, where the lower the slope value, the flatter the terrain and the higher the slope value, the steeper the terrain. The output slope raster can be calculated as percent of slope or degree of slope. 

The z-factor is the number of ground x,y units in one surface z unit. For example, if your x and y units are in meters and your z units are in feet, you would specify a z-factor of 0.3048, since there are 0.3048 meters in one foot. In our case, leave the Z factor as 1 (default value). Output cell size is the cell size of the DEM. 

1.Go to ArcToobox &#8594;Spatial Analyst Tools &#8594; Surface &#8594;	Slope. Set the Input surface to DEMClip. Choose an Output raster location. Keep the Output measurement in DEGREE. Click on Show Help and read a bit more about how this tool works. Click OK.

<a href="{{ site.url }}/pictures/Slope1.png"><img src="{{ site.url }}/pictures/Slope1.png"></a>

2.Open the Layer Properties &#8594; Symbology Tab of the Slope layer. Set the number of class to the highest possible value (e.g., 32). Click OK. 

<a href="{{ site.url }}/pictures/Slope2.png"><img src="{{ site.url }}/pictures/Slope2.png"></a>

3.Make sure the Spatial Analyst Toolbar is visible (right-click grey area at top of ArcMap and make sure there is a check mark next to Spatial Analyst).

4.In the Spatial Analyst Toolbar, set Layer to the Slope Layer. Click the Histogram  icon . <a href="{{ site.url }}/pictures/Slope3.png"><img src="{{ site.url }}/pictures/Slope3.png"></a>


5.Right click on the Dialog Box. Go to Export &#8594; Data Tab. Save as an Excel File. 

<a href="{{ site.url }}/pictures/Slope4.png"><img src="{{ site.url }}/pictures/Slope4.png"></a>


7.Open the saved file in Excel and create a cumulative graph of watershed slope, similar to the one you made for the hypsometric curve. 
What percent of the watershed has a slope greater than 5 degrees? 
