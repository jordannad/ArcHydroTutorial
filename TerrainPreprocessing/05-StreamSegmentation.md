---
layout: collection
title: Stream Segmentation
---
##Background##

The Stream Segmentation Tool divides the stream into segments or links. A stream segment or link starts at either the beginning of a stream or where two streams intersect and ends at a downstream split in the stream or at the exit point of the system. 
Each stream segment is identified with a unique id number.
The most downstream cells of the stream segments are watershed outlets. Users can also define watershed outlets by inputting coordinate as we have done in this exercise.

<a href="{{ site.url }}/pictures/StreamSegment.png"><img src="{{ site.url }}/pictures/StreamSegment.png"></a>

##Steps##

1. Go to Terrain Preprocessing &#8594; Stream Segmentation &#8594; Click OK.

<a href="{{ site.url }}/pictures/StreamSegment2.png"><img src="{{ site.url }}/pictures/StreamSegment2.png"></a>

Right click on the Stream Segment raster (StrLnk is the default name) and open the attribute table. In this case, we have 219 stream segments. The column labeled 'Counts' refers to the number of grid cells associated with each segment or link.

<a href="{{ site.url }}/pictures/StreamSegment3.png"><img src="{{ site.url }}/pictures/StreamSegment3.png"></a>


