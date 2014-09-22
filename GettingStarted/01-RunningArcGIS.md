---
layout: collection
title: Running ArcGIS
---

Geographic Information Systems (GIS) is a powerful tool for analyzing spatial data. It can be used to overlay disparate natural and social science information in order to ask geospatial questions of the world.  Environmental and hydrological data are inherently geospatial, and thus there is a growing use of GIS for the environmental and hydrological sciences.

The most commonly used GIS software is **ArcGIS**, developed by the Environmental Systems Research Institute (ESRI).  However, there are currently many GIS software products available on the market, including a growing number of open-source products.  GIS can be used to delineate and characterize watersheds, and can be used as a pre- and post-processing tool for watershed models. 


###Data Types###

The two major data models used in GIS are vectors and rasters.  Vectors include points, lines, and polygons (e.g., GPS locations, streams, roads, and county boundaries) and are commonly found in a format called “shapefile.”  Rasters are grids or pixel-based data (e.g., satellite imagery and aerial photography).

<a href="{{ site.url }}/pictures/VectorRaster.png"><img src="{{ site.url }}/pictures/VectorRaster.png"></a>


###Installation and Access###

GIS is available on many computers throughout campus; however, you may prefer to use the ones in either Y2E2 184 or Branner Library, because these will also have the required ArcHydro extension. If you use the Y2E2 computers, your files will be saved directly to your [AFS space](https://itservices.stanford.edu/service/afs/intro). 

You are also free to use your own computer if you install the 1-year ArcEditor license. This [license](https://lib.stanford.edu/stanford-geospatial-center/arcgis-102-software-download) is available for Stanford computers. If you are running ArcGIS on your personal laptop, make sure that you have several GB of space available and preferably 8GB (or more) of RAM. **You must also install the Spatial Analyst extension to use ArcHydro tools.**

The [ArcHydro extension](https://geonet.esri.com/message/402547#402547) is free and available via ftp from the ESRI forums. Make sure to use the ArcHydro Tools 2.0 version for ArcGIS 10.x for this assignment.


###Programs in ArcGIS Suite###

#### ArcMap####

ArcMap is the main component of Esri's ArcGIS suite of geospatial processing programs, and is used primarily to view, edit, create, and analyze geospatial data.

#### ArcCatalog####

ArcCatalog is similar to Windows Explorer for managing ArcGIS data.  Because layers (e.g., shapefiles and rasters) often consist of many different files it is always best to use ArcCatalog when moving or renaming files.  You can use ArcCatalog to preview data.  You can also run ArcToolbox from within ArcCatalog. 

