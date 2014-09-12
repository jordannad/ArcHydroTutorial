---
layout: collection
title: Stream Definition
---

##Background##

Streams are defined based on the number of grid cells draining into an area. Recall that these values were just calculated in the Flow Accumulation step. ArcHydro uses a default threshold of 1% of the maximum flow 
accumulation. 

The streams that are 'defined' in this section are not necessarily meaningful or representative of existing streams. In fact, any other value of threshold can be selected. A smaller threshold will result in denser stream network and usually in a greater number of delineated 
catchments. For this exercise, it is a good idea to compare your stream definition raster to your topographic map.

<a href="/pictures/StreamDefinition.png"><img src="/pictures/StreamDefinition.png"></a>

##Steps##

1. Go to Terrain Preprocessing &#8594; Stream Definition &#8594. Accept the default Stream Threshold values and click OK.

<a href="/pictures/StreamDefinition2.png"><img src="/pictures/StreamDefinition2.png"></a>

Compare the NHD Flowlines shown in black with the streams defined from the DEM (in blue). 

<a href="/pictures/StreamDefinition3.png"><img src="/pictures/StreamDefinition3.png"></a>


