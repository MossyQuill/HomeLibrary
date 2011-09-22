purge.commands = rm -f *~ && rm -f include.d/*~ && rm -f doc.d/*~

TEMPLATE	= app
LANGUAGE	= C++
QT		+= sql network
CONFIG		+= qt release thread warn_on app_bundle
DEFINES		+= CONFIGFILE="'\"/Applications/BiblioteQ.d/biblioteq.conf\"'"
QMAKE_CXXFLAGS	+= -Wall -Wextra -Werror
QMAKE_LFLAGS_RELEASE =
QMAKE_LFLAGS_RPATH =
QMAKE_CLEAN	+= BiblioteQ
QMAKE_CXXFLAGS_RELEASE += -Wall -Wextra -Werror
QMAKE_EXTRA_TARGETS = purge
INCLUDEPATH	+= include.d /usr/local/include
ICON		= icons.d/book.icns
LIBS		+= -L/usr/local/lib -lyaz -lsqlite3

FORMS           = cdinfo.ui \
		  tracks.ui \
		  allinfo.ui \
		  dvdinfo.ui \
		  history.ui \
		  maginfo.ui \
		  bookinfo.ui \
		  branch_s.ui \
		  password.ui \
		  userinfo.ui \
                  borrowers.ui \
		  errordiag.ui \
		  adminsetup.ui \
                  mainwindow.ui \
		  copybrowser.ui \
		  customquery.ui \
		  z3950results.ui \
		  videogameinfo.ui \
		  dbenumerations.ui \
		  members_browser.ui

UI_HEADERS_DIR  = include.d

HEADERS		= include.d/qtbook.h \
                  include.d/myqstring.h \
		  include.d/qtbook_cd.h \
		  include.d/main_table.h \
		  include.d/qtbook_dvd.h \
		  include.d/copy_editor.h \
		  include.d/qtbook_book.h \
		  include.d/qtbook_item.h \
		  include.d/z3950results.h \
                  include.d/dbenumerations.h \
		  include.d/generic_thread.h \
		  include.d/image_drop_site.h \
		  include.d/qtbook_magazine.h \
		  include.d/borrowers_editor.h \
		  include.d/qtbook_videogame.h \
		  include.d/hyperlinked_text_edit.h

SOURCES		= qtbook.cc \
                  myqstring.cc \
		  qtbook_cd.cc \
		  main_table.cc \
		  qtbook_dvd.cc \
		  copy_editor.cc \
		  qtbook_book.cc \
		  qtbook_item.cc \
		  z3950results.cc \
                  dbenumerations.cc \
		  generic_thread.cc \
		  misc_functions.cc \
		  qtbook_journal.cc \
		  image_drop_site.cc \
		  qtbook_magazine.cc \
		  borrowers_editor.cc \
		  qtbook_videogame.cc \
		  numeric_table_item.cc \
		  hyperlinked_text_edit.cc

TRANSLATIONS    = translations.d/biblioteq_cs_CZ.ts \
		  translations.d/biblioteq_de_DE.ts \
		  translations.d/biblioteq_el_GR.ts \
                  translations.d/biblioteq_nl_BE.ts \
                  translations.d/biblioteq_nl_NL.ts

TARGET		= BiblioteQ
PROJECTNAME	= BiblioteQ
