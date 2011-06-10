# setup.exe cannot handle Orayta Books' filenames
# this script can also be used to update an existing installation

bookdir=/usr/share/Orayta/Books

if test -d $bookdir/.svn
then
	cd $bookdir
	svn update
else
	rm -fr $bookdir
	svn checkout http://orayta.googlecode.com/svn/books $bookdir
fi
