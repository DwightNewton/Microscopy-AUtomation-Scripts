# Automated Image Processing
Slidebook is a powerful piece of iamge analysis software, but many tasks relevant to image processing need to be done repetitively and involve tedious numbers of mouse clicks to complete. Rather than using Slidebook's built-in scripting language, which cannot easily interface with outside applications (i.e. Windows Explorer, Excel), these scripts use AutoHotkey - an easy to use open-source scripting language. This manual will give a brief summary of the functions of the individual scripts and a practical guide on how to use them. Some steps are specific to confocal images, and others should be performed for all images, regardless of quantitative or qualitative analyses.

The pre-processing steps that are automated in this repository are:

- Deconvolution
- Extracting Co-Factors and Exposure Times
- Creating Projections
- Renormalizing Images

Each script will, when executed, prompt the user for the number of Slidebook files, and sometimes the number of images per Slidebook files. Input these as numerical values, without spaces or other characters (i.e. "6" not "six"), then click OK.

## Deconvolution
This script is relatively straightforward and simply uses the autoquant widefield function and automates the loading of the next image. **Ensure that Slidebook has been launched, and Windows Explorer is open to your image directory with the top-most file selected.**

Notes:
- This script was written with the estimate of 1hr/file for deconvolution (~12-15 images/file). Adjust your time accordingly, being conservative in the estimate.
- If using images taken with the disc-spinning unit (DSU), line 9 will need to be changed.

## Extracting Co-Factors and Exposure Times
