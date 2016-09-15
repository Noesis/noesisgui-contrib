======================================
Shoebox xml to xaml converter
          &
Unity shoebox xaml importer          
======================================

Converter Usage
------------

Put ShoeboxConverter.cmd to folder where you have your shoebox .xml files and run it.
Program will search for every shoebox .xml file from working directory and output new ResourceDirectory .xaml files named as processed .xml file.
Then just include xaml resources as you would normally do.


Unity importer usage
------------

From Unity menu bar go to Tools-ShoeboxReading-Shoebox xaml import

From new Shoebox Importer window, put your xaml to TextAsset and your Texture to Texture2D, choose pivot settings and hit Read.
Unity will make sprites from your texture file accordingly your xaml file. 
 
  