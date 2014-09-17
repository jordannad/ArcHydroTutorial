---
layout: collection
title: Setting up Assignment
---

1)	Go to Start &#8594; All Programs &#8594; ArcGIS &#8594; ArcMap.  Click OK to start using ArcGIS with a new empty map.

<a href="{{ site.url }}/pictures/SS1.png"><img src="{{ site.url }}/pictures/SS1.png"></a>

2)	If the list of red toolboxes – called ArcToolbox – is not visible, click Show/Hide ArcToolbox Icon <a href="{{ site.url }}/pictures/ShowHideToolbox.png"><img src="{{ site.url }}/pictures/ShowHideToolbox.png"></a> . 

<a href="{{ site.url }}/pictures/SS2.png"><img src="{{ site.url }}/pictures/SS2.png"></a>

3)	Expand a few of the toolboxes by clicking on the cross hair next to the toolbox name to get a sense of some ArcGIS functionality.  

4)	In particular, note:
Geostatistical Analyst Tools &#8594; Moving Window Kriging, Spatial Analyst Tools &#8594; Groundwater &#8594; Darcy Flow, and Spatial Statistics Tools &#8594; Analyzing Patterns &#8594;Spatial Autocorrelation.  These are important tools for the modern-day hydrologist and hydrogeologist.  

Note: Some of the tools in the Spatial Analyst Tools &#8594; Hydrology Toolbox are the same as those found in ArcHydro Tools. 

<a href="{{ site.url }}/pictures/SS3.png"><img src="{{ site.url }}/pictures/SS3.png"></a>


5)	Go to Customize &#8594; Extensions.  Make sure there is a check mark next to all the extensions (the most important being the Spatial Analyst Extension). 

<a href="{{ site.url }}/pictures/SS4.png"><img src="{{ site.url }}/pictures/SS4.png"></a>


6)	Right click in the top margin, next to the word Help.  Make sure there is a check mark next to the following tool bars:
-	Arc Hydro Tools
-	Layout
-	Main Menu
-	Spatial Analyst
-	Standard
-	Tools
You may have to scroll down to see them all.  You can move toolbars around by grabbing the left side of them.

<a href="{{ site.url }}/pictures/SS5.png"><img src="{{ site.url }}/pictures/SS5.png"></a>

7)	Launch ArcCatalog: Start &#8594; All Programs &#8594; ArcGIS &#8594; ArcCatalog.

8)	Click on the folder that contains the 10m DEM for your watershed.  If you ever create a new folder in Windows Explorer but have trouble seeing it in ArcCatalog, minimize the ArcCatalog folders and click F5 to refresh. 

<a href="{{ site.url }}/pictures/SS6.png"><img src="{{ site.url }}/pictures/SS6.png"></a>

9)	If you cannot find a folder in ArcCatalog, you may need to click on the Connect to Folder icon <a href="{{ site.url }}/pictures/ConnectFolderIcon.png"><img src="{{ site.url }}/pictures/ConnectFolderIcon.png"></a> in the top right of the Arc Catalog window.  For example, if you need to connect to the Desktop, click the word Desktop in the Connect to Folder pop-up window and click OK.  The Desktop will now appear as a folder in ArcCatalog.

10)	Once you have found the folder with the 10m DEM for your watershed, right click the actual DEM in the right panel of ArcCatalog.  Select “Rename” and rename your DEM to the name of the main stem of your watershed.  Make sure to avoid spaces in the name.  

<a href="{{ site.url }}/pictures/SS7.png"><img src="{{ site.url }}/pictures/SS7.png"></a>

11)	While the DEM is selected, click on the Preview Tab, to see what the DEM looks like.

12)	If you are ever asked whether you want to “Create pyramids” for a DEM that you are previewing in ArcCatalog or adding in ArcMap, always click Yes. 

Pyramids are reduced resolution representations of data and are used to increase performance.  If you are looking at a DEM which is zoomed out very far to a small scale, less resolution and detail are needed; pyramids allow for the display of only the needed amount of detail. 

<a href="{{ site.url }}/pictures/SS8.png"><img src="{{ site.url }}/pictures/SS8.png"></a>

<a href="{{ site.url }}/pictures/SS9.png"><img src="{{ site.url }}/pictures/SS9.png"></a>

13)	Close ArcCatalog.

14)	In ArcMap, click the Add Data icon <a href="{{ site.url }}/pictures/AddDataIcon.png"><img src="{{ site.url }}/pictures/AddDataIcon.png"></a>. Add the 10m DEM which you just renamed in ArcCatalog. 

15.	Right click the name of the DEM.  Go to Properties. (Alternatively, simply double click the name of the DEM.)

<a href="{{ site.url }}/pictures/SS10.png"><img src="{{ site.url }}/pictures/SS10.png"></a>

16)	Click on the Symbology tab.  From the Color Ramp drop-down menu choose a color ramp with a strong contrast.  Click Apply.

<a href="{{ site.url }}/pictures/SS11.png"><img src="{{ site.url }}/pictures/SS11.png"></a>

17)	Take a minute and click on the other Layer Property tabs.  For example, notice that on the Display tab you can change the transparency of the layer.  Click OK.

18)	Take some time to learn the Zoom functions, such as Zoom In <a href="{{ site.url }}/pictures/ZoomIn.png"><img src="{{ site.url }}/pictures/ZoomIn.png"></a>, Zoom Out <a href="{{ site.url }}/pictures/ZoomOut.png"><img src="{{ site.url }}/pictures/ZoomOut.png"></a>, Fixed Zoom In <a href="{{ site.url }}/pictures/FixedZoomIn.png"><img src="{{ site.url }}/pictures/FixedZoomIn.png"></a>, Fixed Zoom Out <a href="{{ site.url }}/pictures/FixedZoomOut.png"><img src="{{ site.url }}/pictures/FixedZoomOut.png"></a>, Pan <a href="{{ site.url }}/pictures/Pan.png"><img src="{{ site.url }}/pictures/Pan.png"></a>, Full Extent <a href="{{ site.url }}/pictures/FullExtent.png"><img src="{{ site.url }}/pictures/FullExtent.png"></a>, and Go Back to Previous Zoom <a href="{{ site.url }}/pictures/BackPrevZoom.png"><img src="{{ site.url }}/pictures/BackPrevZoom.png"></a>. 


 
