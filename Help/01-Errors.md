---
layout: collection
title: Errors
---

###Error adding Outlet Excel File###

<a href="{{ site.url }}/pictures/OutletError.png"><img src="{{ site.url }}/pictures/OutletError.png"></a>

Try saving your Excel file as a .xls (1997-2003 format) file rather than .xlsx. [Still not working?](https://geonet.esri.com/thread/7655)

###Distances shown in degrees###

You may run into this problem when determining the watershed area. One of the major sources of errors when starting a new Arc Hydro project is adding the first data layer with an inappropriate spatial reference. The first layer added to the map sets the spatial reference for the map dataframe. It will also be used by Arc Hydro to set the projection of the output target datasets (such as the flow direction/accumulation rasters). 

###System Runtime Interop Error###

<a href="{{ site.url }}/pictures/Error1.png"><img src="{{ site.url }}/pictures/Error1.png"></a>

This is a very common error when using ArcHydro, although the exact text and function in which it appears might differ slightly. There are many things that can be done to resolve this issue, though the precise cause is still unknown:

- If this error arose during a Terrain Preprocessing step, check your input names. Try the step again after restarting ArcMap.
- Make sure your Target Locations are correct: Under ApUtilities &#8594; Set Target Locations, make sure the HydroConfig and they GeoHMSConfig Targets make sense. The raster data should go to the project folder and the vector data to a geodatabase. Through the ArcHydro Toolbar under there is a function to reset the target locations: ApUtilities &#8594; Additional Utilities &#8594; Reset Target Locations.
- Put your mxd file in a folder with a simple name (preferably 8 characters or less) and no spaces or non-alpha numeric characters.
- Do not enable the Background Processing option on the Geoprocessing Options editor. 
     - Go to Geoprocessing, Geoprocessing Options
     - Make sure the Enable checkbox is not checked under Background Processing.
- Delete everything you can in your temp folder: You can do this without exiting ArcMap through the ArcHydro Toolbar under ApUtilities>Additional Utilities &#8594; Clean User's Temp Folder.

###Incorrect Watershed following 'Snap' in Drainage Point Processing###

There are two possible errors associated with using this new automated methodology to estimate the pour point: 

- Snapping to the "wrong” 10m DEM derived stream line. In this case, the outlet point is located next to several 10m DEM derived stream lines and it picks the closest one, which is not the “target” stream. You may observe a watershed boundary which is not located on the correct stream.
- Not snapping to any stream line (i.e., The lat/long for a test site is located too far from any 10m DEM
derived stream line and therefore does not snap to anything.). In this case the watershed boundary will be very
small and strangely shaped.

<a href="{{ site.url }}/pictures/ErrorSnap.png"><img src="{{ site.url }}/pictures/ErrorSnap.png"></a>

###Found Another?###

If you run into another bug, email me at <a href="mailto:{{ site.email }}">{{ site.email }}</a>. Include screenshots please! 