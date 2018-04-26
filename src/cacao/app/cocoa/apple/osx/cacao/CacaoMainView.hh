///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2018 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: CacaoMainView.hh
///
/// Author: $author$
///   Date: 4/25/2018
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_APP_COCOA_APPLE_OSX_CACAO_CACAOMAINVIEW_HH
#define _CACAO_APP_COCOA_APPLE_OSX_CACAO_CACAOMAINVIEW_HH

#include "cacao/cocoa/apple/osx/MainView.hh"

#define CACAO_APP_COCOA_APPLE_OSX_CACAO_FG_RED   0x00
#define CACAO_APP_COCOA_APPLE_OSX_CACAO_FG_GREEN 0x00
#define CACAO_APP_COCOA_APPLE_OSX_CACAO_FG_BLUE  0x00

#define CACAO_APP_COCOA_APPLE_OSX_CACAO_BG_RED   0xFF
#define CACAO_APP_COCOA_APPLE_OSX_CACAO_BG_GREEN 0xFF
#define CACAO_APP_COCOA_APPLE_OSX_CACAO_BG_BLUE  0xDD

#define CACAO_APP_COCOA_APPLE_OSX_CACAO_BD_RED   0x88
#define CACAO_APP_COCOA_APPLE_OSX_CACAO_BD_GREEN 0x88
#define CACAO_APP_COCOA_APPLE_OSX_CACAO_BD_BLUE  0x88

///////////////////////////////////////////////////////////////////////
/// Interface: CacaoMainView
///////////////////////////////////////////////////////////////////////
@interface CacaoMainView: MainView {
    }
    @property (assign) int fgRed;
    @property (assign) int fgGreen;
    @property (assign) int fgBlue;

    @property (assign) int bgRed;
    @property (assign) int bgGreen;
    @property (assign) int bgBlue;

    @property (assign) int bdRed;
    @property (assign) int bdGreen;
    @property (assign) int bdBlue;

    - (CacaoMainView*)initWithFrame:(NSRect)rect
                       application:(Application*)application;
@end

#endif /// _CACAO_APP_COCOA_APPLE_OSX_CACAO_CACAOMAINVIEW_HH 
