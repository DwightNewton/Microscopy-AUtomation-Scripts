# Automated Image Processing
Slidebook is a powerful piece of iamge analysis software, but many tasks relevant to image processing need to be done repetitively and involve tedious numbers of mouse clicks to complete. Rather than using Slidebook's built-in scripting language, which cannot easily interface with outside applications (i.e. Windows Explorer, Excel), these scripts use AutoHotkey - an easy to use open-source scripting language. This manual will give a brief summary of the functions of the individual scripts and a practical guide on how to use them. Some steps are specific to confocal images, and others should be performed for all images, regardless of quantitative or qualitative analyses.

The pre-processing steps that are automated in this repository are:

- Deconvolution
- Extracting Co-Factors and Exposure Times
- Creating Projections
- Renormalizing Images

## Deconvolution
