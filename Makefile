#$Id: Makefile,v 1.1 2001-03-05 15:07:57 gotm Exp $
#
# Makefile for making new release of GOTM.
#

# Should be update for each new unstable release.
TAGNAME	= v2_3_2

all:

dist:
	cvs tag $(TAGNAME)	
	(cd src/ ; cvs2cl)
	cvs export -r $(TAGNAME) -d gotm-`cat VERSION` gotm
	mv gotm-`cat VERSION` ~/old_gotm
	cp ChangeLog ~/old_gotm/gotm-`cat VERSION`
	
#-----------------------------------------------------------------------
# Copyright (C) 2001 - Hans Burchard and Karsten Bolding (BBH)         !
#-----------------------------------------------------------------------
