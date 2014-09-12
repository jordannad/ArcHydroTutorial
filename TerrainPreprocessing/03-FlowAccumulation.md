---
layout: collection
title: Flow Accumulation
---

## Background ##

Flow accumulation is a measure of the drainage area in units of grid cells. The cell itself is not included in the count. 

<a href="/pictures/FlowAccumulation.png"><img src="/pictures/FlowAccumulation.png"></a>

For example, 

##Steps##

1. Go to Terrain Preprocessing &#8594; Flow Accumulation &#8594. Click OK

<a href="/pictures/FlowAccumulation2.png"><img src="/pictures/FlowAccumulation2.png"></a>

Compare the following two screenshots. The first shows the Flow Accumulation raster generated. Note the high values in the legend. This is the count of the number of 10m by 10m grid cells draining into a given cell. Also, observe that the circled area shows very little flow.

<a href="/pictures/FlowAccumulation3.png"><img src="/pictures/FlowAccumulation3.png"></a>

Compare this to the NHD Flow Lines. This might be a case where we want to burn the NHD Flowline Pattern into our DEM so that we are guaranteed to get these upstream triutaries in the final delineation. We will discuss this further when applying DEM Reconditioning. 

<a href="/pictures/FlowAccumulation4.png"><img src="/pictures/FlowAccumulation4.png"></a>


