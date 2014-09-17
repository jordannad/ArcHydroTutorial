---
layout: collection
title: Data Reprojection
---

##Background##

The downloaded GIS data come with associated geographic coordinate systems of latitude and longitude, giving exact positions on the earth’s surface.  However, because the parallels of latitude become smaller and smaller in length as you move away from the equator, longitude distances are not preserved (one degree of longitude at the equator is not the same length as one degree of longitude at 60°N latitude).  Thus, we must re-project our data into a projected coordinate system, in order to be able to make measurements in meters as opposed to degrees. 

<a href="{{ site.url }}/pictures/Reprojection1.png"><img src="{{ site.url }}/pictures/Reprojection1.png"></a>

Note: Map projection analogous to trying to take the curved surface of the earth and flatten it onto a two-dimensional piece of paper. There are many choices of map projections and each distorts distance, area and possibly shape.

##Reprojection On The Fly##

ArcMap can perform what is commonly known as on-the-fly projection. This means ArcMap can display data stored in one projection as if it were in another projection. The new projection is used for display and query purposes only. The actual data is not altered.

The first layer added defines the data frame’s coordinate system. This is true whether the data is projected or geographic. For example, if the first layer added to the data frame contains data that uses a WGS84 geographic coordinate system, all other layers will adjust to match this. Even data that uses a projected coordinate system will unproject on the fly.