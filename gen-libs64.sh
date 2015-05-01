#!/bin/sh

###########################################################################
#  Change values here													  #
#																		  #
VERSION="2.7.1"
DELIVERIES="libiffi.a libpython${VERSION}.a"
#																		  #
###########################################################################
#																		  #
# Don't change anything under this line!								  #
#																		  #
###########################################################################

CURRENTPATH=`pwd`

echo "Build library..."

lipo -create ${CURRENTPATH}/build/libffi-3.1/build_iphoneos-arm64/.libs/libffi.a  \
             ${CURRENTPATH}/build/libffi-3.1/build_iphonesimulator-x86_64/.libs/libffi.a \
-output ${CURRENTPATH}/dist/libffi.a

lipo -create ${CURRENTPATH}/build/Python-2.7.1/host/libpython2.7.a  \
             ${CURRENTPATH}/build/Python-2.7.1/ios-arm64/libpython2.7.a \
-output ${CURRENTPATH}/dist/libpython2.7.a

