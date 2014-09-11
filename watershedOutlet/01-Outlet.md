---
layout: collection
title: Watershed Outlet Point
---

It is important to know how to turn lat-long data collected with a GPS or from a map into a shapefile in GIS.  You will now create a point shapefile of the watershed outlet.  Use the appropriate watershed outlet for your catchment as given in the assignment.

30.	Open an Excel Spreadsheet.  In Cell A1 write “Longitude.”  In Cell B1 write “Latitude.”  Don’t write the words “Long” and “Lat,” because “long” is a reserved database word.  In Cell A2 write the longitude of the watershed outlet in decimal degrees, as calculated in the first step of the DEM section.  In Cell B2 write the latitude of the watershed outlet in decimal degrees.  Save the file as “Outlet.”

 
Figure 19. Excel File with Lat-Longs.
	
31.	Go back to the open ArcGIS file (whose data frame is in a Geographic Coordinate System).  Click the add data button. 

32.	Navigate to the “Outlet” spreadsheet file.  You may have to double click “Sheet 1$.”  Set the X Field to Longitude and the Y Field to Latitude. 

33.	Click the “Edit…” button in the Coordinate System of Input Coordinate box. 

 
Figure 20. Add XY Data.

34.	Click Import.  Search for the original DEM file in the Geographic Coordinate System.  Click OK. 

35.	This should set the input XY data to the same coordinate system as the data frame.  Click OK.  A “Table Does Not Have Object-ID Field” box may pop up.  Click OK. 

 
Figure 21. Table Does Not Have Object-ID Field.

36.	You have just created an Events Table.  Note that the point should be at the base of the watershed.  If you do not see the point, perhaps you entered the coordinates incorrectly into Excel.  Right click on name of this new point layer.  Go to Data  Export Data…

37.	Name the file “Outlet.shp.”  Click OK.  You have now created a shapefile of the watershed outlet point.  Click “Yes” when prompted to add the exported data to the map as a layer.

 
Figure 22. Export Data.


 
