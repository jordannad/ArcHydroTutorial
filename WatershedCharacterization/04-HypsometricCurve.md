---
layout: collection
title: Hypsometric Curve
---

A hypsometric curve is a cumulative distribution function of watershed elevations. Review the [Watershed Characterization Notes](/Downloads/WatershedCharacNotes.pdf) from Week 1 for a refresher.

<a href="{{ site.url }}/pictures/HypsometricCurve.png"><img src="{{ site.url }}/pictures/HypsometricCurve.png"></a>


1)	If the attribute table of the clipped DEM is greyed out, we must first need to build the DEMClip attribute table. 

a. Navigate to ArcToolbox &#8594; Data Management Tools &#8594; Raster &#8594; Raster Dataset &#8594; Copy Raster. 

b. In the Pixel Type drop-down, select the 32_Bit_Signed integer. This converts the 32-bit floating point raster to a 32-bit signed integer raster. 

<a href="{{ site.url }}/pictures/HypsometricCurv2.png"><img src="{{ site.url }}/pictures/HypsometricCurve2.png"></a>


c. Click ArcToolbox &#8594; Data Management Tools &#8594; Raster &#8594; Raster Properties &#8594; Build Raster Attribute Table. 

d. Input the 32-bit signed integer output raster from part (a). This output raster will have an attribute table now. 

<a href="{{ site.url }}/pictures/HypsometricCurve3.png"><img src="{{ site.url }}/pictures/HypsometricCurve3.png"></a>


2)	Export the table. Open the .dbf file in Excel (change file type to dBASE). The VALUE column indicates the elevation value. The COUNT column indicates the number of cells with that elevation value.

<a href="{{ site.url }}/pictures/HypsometricCurve4.png"><img src="{{ site.url }}/pictures/HypsometricCurve4.png"></a>

3)	Sum up the COUNT column. This is the total number of pixels in the watershed.

4)	In Column C, cumulatively sum the COUNT column. In Column D, divide each cumulative value by the sum of the COUNT column. This indicates the percentage of the watershed that is at or below the elevation value.

5)	Plot Column D vs. Column A. This is the Hypsometric Curve.  

<a href="{{ site.url }}/pictures/HypsometricCurve5.png"><img src="{{ site.url }}/pictures/HypsometricCurve5.png"></a>

*Do you think you could create this curve manually using a map and a planimeter?*
