# Automated Image Processing
Slidebook is a powerful piece of iamge analysis software, but many tasks relevant to image processing need to be done repetitively and involve tedious numbers of mouse clicks to complete. Rather than using Slidebook's built-in scripting language, which cannot easily interface with outside applications (i.e. Windows Explorer, Excel), these scripts use AutoHotkey - an easy to use open-source scripting language. This manual will give a brief summary of the functions of the individual scripts and a practical guide on how to use them. Some steps are specific to confocal images, and others should be performed for all images, regardless of quantitative or qualitative analyses.

The pre-processing steps that are automated in this repository are:

- Deconvolution
- Extracting Co-Factors and Exposure Times
- Creating Projections
- Renormalizing Images

Each script will, when executed, prompt the user for the number of Slidebook files, and sometimes the number of images per Slidebook files. Input these as numerical values, without spaces or other characters (i.e. "6" not "six"), then click OK. **If at any time you wish to terminate a script, press the escape (Esc) key.**

## Deconvolution
**Before starting: Ensure that Slidebook has been launched, and Windows Explorer is open to your image directory with the top-most file selected.**
This script is relatively straightforward and simply uses the autoquant widefield function and automates the loading of the next image. 

Notes:
- This script was written with the estimate of 1hr/file for deconvolution (~12-15 images/file). Adjust your time accordingly, being conservative in the estimate.
- If using images taken with the disc-spinning unit (DSU), line 9 will need to be changed.

## Extracting Co-Factors and Exposure Times
**Before starting: Launch Slidebook, open Excel and open the "normalization" worksheet with cell B3 highligted, and open Windows Explorer to your image directory with the top-most file selected**
This script opens each Slidebook file, extracts exposure times and deconvolution parameters, and loads the next file.

Notes:
- This script was written for 3 fluorescent channels (405, 488, and 568nm). If using a 4th, ensure you modify the "normalization" worksheet. Notify me and I can add additional lines to extract the 4th channel.
- Once completed, 

## Projection and Renormalizing
**Before starting: Launch Slidebook, open Excel and open the "normalization" worksheet with cell O3 highligted, and open Windows Explorer to your image directory with the top-most file selected**
