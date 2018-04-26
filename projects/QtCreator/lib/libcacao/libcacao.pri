########################################################################
# Copyright (c) 1988-2018 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: libcacao.pri
#
# Author: $author$
#   Date: 4/25/2018
#
# QtCreator .pri file for cacao library libcacao
########################################################################

########################################################################
# libcacao

# libcacao TARGET
#
libcacao_TARGET = cacao
libcacao_TEMPLATE = lib
libcacao_CONFIG += staticlib

# libcacao INCLUDEPATH
#
libcacao_INCLUDEPATH += \
$${cacao_INCLUDEPATH} \

# libcacao DEFINES
#
libcacao_DEFINES += \
$${cacao_DEFINES} \

########################################################################
# libcacao OBJECTIVE_HEADERS
#
libcacao_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/base/Base.hh \
$${CACAO_SRC}/cacao/cocoa/os/Os.hh \
$${CACAO_SRC}/cacao/cocoa/os/Cocoa.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Cocoa.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Logger.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Application.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainMenu.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainView.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainWindow.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Main.hh \

# libcacao OBJECTIVE_SOURCES
#
libcacao_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/os/Os.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Cocoa.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Logger.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Application.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainMenu.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainView.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainWindow.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Main.mm \

########################################################################
# libcacao HEADERS
#
libcacao_HEADERS += \
$${CACAO_SRC}/xos/lib/cacao/version.hpp \

# libcacao SOURCES
#
libcacao_SOURCES += \
$${CACAO_SRC}/xos/lib/cacao/version.cpp \

########################################################################



