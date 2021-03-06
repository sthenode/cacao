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
///   File: CacaoMainWindow.hh
///
/// Author: $author$
///   Date: 4/25/2018
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_APP_COCOA_APPLE_OSX_CACAO_CACAOMAINWINDOW_HH
#define _CACAO_APP_COCOA_APPLE_OSX_CACAO_CACAOMAINWINDOW_HH

#include "cacao/cocoa/apple/osx/MainWindow.hh"
#include "cacao/app/cocoa/apple/osx/cacao/CacaoMainView.hh"

///////////////////////////////////////////////////////////////////////
/// Interface: CacaoMainWindow
///////////////////////////////////////////////////////////////////////
@interface CacaoMainWindow: MainWindow {
    }
    @property (assign) CacaoMainView* mainView;

    - (CacaoMainWindow*)initWithContentRect:(NSRect)contentRect
                         application:(Application*)application;
@end

#endif /// _CACAO_APP_COCOA_APPLE_OSX_CACAO_CACAOMAINWINDOW_HH 
