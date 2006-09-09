# - Try to find ASPELL
# Once done this will define
#
#  ASPELL_FOUND - system has ASPELL
#  ASPELL_INCLUDE_DIR - the ASPELL include directory
#  ASPELL_LIBRARIES - The libraries needed to use ASPELL
#  ASPELL_DEFINITIONS - Compiler switches required for using ASPELL
#
# Copyright (c) 2006, Alexander Neundorf, <neundorf@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.


if (ASPELL_INCLUDE_DIR AND ASPELL_LIBRARIES)
  # Already in cache, be silent
  set(ASPELL_FIND_QUIETLY TRUE)
endif (ASPELL_INCLUDE_DIR AND ASPELL_LIBRARIES)

FIND_PATH(ASPELL_INCLUDE_DIR aspell.h
  /usr/include
  /usr/local/include
)

FIND_LIBRARY(ASPELL_LIBRARIES NAMES aspell aspell-15
  PATHS
  /usr/lib
  /usr/local/lib
)

if (ASPELL_INCLUDE_DIR AND ASPELL_LIBRARIES)
   set(ASPELL_FOUND TRUE)
endif (ASPELL_INCLUDE_DIR AND ASPELL_LIBRARIES)

if (ASPELL_FOUND)
  if (NOT ASPELL_FIND_QUIETLY)
    message(STATUS "Found ASPELL: ${ASPELL_LIBRARIES}")
  endif (NOT ASPELL_FIND_QUIETLY)
else (ASPELL_FOUND)
  if (ASPELL_FIND_REQUIRED)
    message(FATAL_ERROR "Could NOT find ASPELL")
  endif (ASPELL_FIND_REQUIRED)
endif (ASPELL_FOUND)

MARK_AS_ADVANCED(ASPELL_INCLUDE_DIR ASPELL_LIBRARIES)
