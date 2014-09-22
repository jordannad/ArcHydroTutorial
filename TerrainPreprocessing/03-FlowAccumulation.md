---
layout: collection
title: Flow Accumulation
---

## Background ##

Flow accumulation is a measure of the drainage area in units of grid cells. The cell itself is not included in the count. Cells with higher flow accumulation values should be located in areas of lower elevation, such as in valleys or drainage channels.

<a href="{{ site.url }}/pictures/FlowAccumulation.png"><img src="{{ site.url }}/pictures/FlowAccumulation.png"></a>

*Can you identify the 7 grid cells draining into the circled cell in the figure above?*

##Steps##

1. Go to Terrain Preprocessing &#8594; Flow Accumulation &#8594; Click OK

<a href="{{ site.url }}/pictures/FlowAccumulation2.png"><img src="{{ site.url }}/pictures/FlowAccumulation2.png"></a>

Compare the following two screenshots. The first shows the Flow Accumulation raster generated. Note the high values in the legend. This is the count of the number of 10m by 10m grid cells draining into a given cell. Also, observe that the circled area shows very little flow.

<a href="{{ site.url }}/pictures/FlowAccumulation3.png"><img src="{{ site.url }}/pictures/FlowAccumulation3.png"></a>

Compare this to the NHD Flow Lines. This might be a case where we want to burn the NHD Flowline Pattern into our DEM so that we are guaranteed to get these upstream triutaries in the final delineation. We will discuss this further when applying DEM Reconditioning. 

<a href="{{ site.url }}/pictures/FlowAccumulation4.png"><img src="{{ site.url }}/pictures/FlowAccumulation4.png"></a>


