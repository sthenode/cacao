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
#   File: cacao.pro
#
# Author: $author$
#   Date: 4/25/2018
#
# QtCreator .pro file for cacao executable cacao
########################################################################
include(../../../../../build/QtCreator/cacao.pri)
include(../../../../QtCreator/cacao.pri)
include(../../cacao.pri)
include(../../../../QtCreator/app/cacao/cacao.pri)

TARGET = $${cacao_exe_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${cacao_exe_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${cacao_exe_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${cacao_exe_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${cacao_exe_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${OBJECTIVE_HEADERS} \
$${cacao_exe_HEADERS} \

# SOURCES
#
SOURCES += \
$${cacao_exe_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${cacao_exe_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${cacao_exe_LIBS} \
$${FRAMEWORKS} \
