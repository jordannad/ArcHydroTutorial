---
layout: collection
title: Watershed Outlet Point
---

We are interested in determining the catchment defined by a specific point, so it is important to know how to turn lat-long data collected with a GPS or from a map into a shapefile in GIS.  In this section you will create a point shapefile of the watershed outlet. **Use the appropriate watershed outlet for your catchment as given in the assignment.**

1. Open an Excel Spreadsheet.  In Cell A1 write “Longitude.”  In Cell B1 write “Latitude.”  Don’t write the words “Long” and “Lat,” because “long” is a reserved database word.  In Cell A2 write the longitude of the watershed outlet in *decimal degrees*.  In Cell B2 write the latitude of the watershed outlet in decimal degrees.  Save the file as “Outlet.”
    <a href="{{ site.url }}/pictures/SS18.png"><img src="{{ site.url }}/pictures/SS18.png"></a>
 	
2. Go back to the open ArcGIS file (whose data frame is in a Geographic Coordinate System).  Click the add data button. 

3. Navigate to the “Outlet” spreadsheet file.  You may have to double click “Sheet 1$.”  

4. Right click on the Outlet layer. Select "Display XY Data". Set the X Field to Longitude and the Y Field to Latitude. 
    <a href="{{ site.url }}/pictures/SS19.png"><img src="{{ site.url }}/pictures/SS19.png"></a>

5. Observe that the coordinate system should be the same as that of the original DEM in geographic coordinates (GCS North America 1983). 

6. Click OK.  A “Table Does Not Have Object-ID Field” box may pop up.  Click OK. 
    <a href="{{ site.url }}/pictures/SS20.png"><img src="{{ site.url }}/pictures/SS20.png"></a>

7. You have just created an Events Table.  Note that the point should be at the base of the watershed (the same point you identified on your topo map in Exercise 1).  If you do not see the point, perhaps you entered the coordinates incorrectly into Excel or forgot a negative sign for the longitude value.  Right click on name of this new point layer.  Go to Data &#8594; Export Data…

8. Name the file “Outlet.shp.”  Click OK.  You have now created a shapefile of the watershed outlet point.  Click “Yes” when prompted to add the exported data to the map as a layer.

    <a href="{{ site.url }}/pictures/SS21.png"><img src="{{ site.url }}/pictures/SS21.png"></a>

    <a href="{{ site.url }}/pictures/SS22.png"><img src="{{ site.url }}/pictures/SS22.png"></a>


 
