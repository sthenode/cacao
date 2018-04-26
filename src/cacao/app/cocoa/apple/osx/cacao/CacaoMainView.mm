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
///   File: CacaoMainView.mm
///
/// Author: $author$
///   Date: 4/25/2018
///////////////////////////////////////////////////////////////////////
#include "cacao/app/cocoa/apple/osx/cacao/CacaoMainView.hh"

///////////////////////////////////////////////////////////////////////
/// Implentation: CacaoMainView
///////////////////////////////////////////////////////////////////////
@implementation CacaoMainView
    - (CacaoMainView*)initWithFrame:(NSRect)rect
                       application:(Application*)application {

        _fgRed = CACAO_APP_COCOA_APPLE_OSX_CACAO_FG_RED;
        _fgGreen = CACAO_APP_COCOA_APPLE_OSX_CACAO_FG_GREEN;
        _fgBlue = CACAO_APP_COCOA_APPLE_OSX_CACAO_FG_BLUE;

        _bgRed = CACAO_APP_COCOA_APPLE_OSX_CACAO_BG_RED;
        _bgGreen = CACAO_APP_COCOA_APPLE_OSX_CACAO_BG_GREEN;
        _bgBlue = CACAO_APP_COCOA_APPLE_OSX_CACAO_BG_BLUE;

        _bdRed = CACAO_APP_COCOA_APPLE_OSX_CACAO_BD_RED;
        _bdGreen = CACAO_APP_COCOA_APPLE_OSX_CACAO_BD_GREEN;
        _bdBlue = CACAO_APP_COCOA_APPLE_OSX_CACAO_BD_BLUE;

        if (([super initWithFrame:rect application:application])) {
            return self;
        }
        return nil;
    }

    - (void)drawRect:(NSRect)rect {
        NSRect bounds = [self bounds];
        [[NSColor clearColor] set];
        NSRectFill(bounds);
        [[NSColor whiteColor] set];
        NSRectFill(bounds);
    }
@end
