#!/bin/bash
#
# tilePngs.sh:  convert images to pyramidal tif format using vips
#
# usage: sh tilePngs.sh <FILENAMES>
# example: sh tileImgs.sh *.png
#
# configuration:
#
# PYRAMID_DIR is the name of the output directory for pyramidal tifs.
PYRAMID_DIR=../ptiff

#
# SRC_EXTENSION is the dot-extension on the SOURCE files:  if you're
# converting .tif files, change this value to "tif" for example
SRC_EXTENSION=jpg



# Script doing the work:
VIPS=`which vips`
MV=`which mv`
for f in $*
do
	echo "------------------"
  baseName=$(echo $f | sed -e "s/.$SRC_EXTENSION//")    
   newF=${PYRAMID_DIR}/${baseName}.tif
  echo "converting " $f " to " $newF " ..."
  specified=${newF}":deflate,tile:256x256,pyramid"
  echo $VIPS " im_vips2tiff " $f $specified
  echo
  $VIPS im_vips2tiff $f $specified
done;
