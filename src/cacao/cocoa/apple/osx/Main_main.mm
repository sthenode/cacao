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
///   File: Main_main.mm
///
/// Author: $author$
///   Date: 4/25/2018
///////////////////////////////////////////////////////////////////////
#include "cacao/cocoa/apple/osx/Main_main.hh"
#include "cacao/cocoa/apple/osx/Logger.hh"
#include "xos/console/std/io.hpp"
#include "xos/console/logger.hpp"
#include "xos/mt/os/mutex.hpp"

///////////////////////////////////////////////////////////////////////
/// Function: main
///////////////////////////////////////////////////////////////////////
int main(int argc, char **argv, char **env) {
    int err = 1;
    ERR_LOG_DEBUG("try {...");
    try {
        ::xos::mt::os::mutex locked(false);
        ::xos::console::std::derived::io io(locked);
        ::xos::console::logger logger(io);
        NSAutoreleasePool *autoreleasePool = nil;

        LOG_DEBUG("[[AutoreleasePool alloc] init]...");
        if ((autoreleasePool = [[NSAutoreleasePool alloc] init])) {
            Application* sharedApplication = nil;

            LOG_DEBUG("[Application sharedApplication]...");
            if ((sharedApplication = [Application sharedApplication])) {
                id<Main> main = nil;
                
                LOG_DEBUG("[ApplicationMain createWithApplication:sharedApplication]...");
                if ((main = [ApplicationMain createWithApplication:sharedApplication])) {

                    LOG_DEBUG("[main run:argc argv:argv env:env]...");
                    err = [main run:argc argv:argv env:env];
                    LOG_DEBUG("..." << err << " = [main run:argc argv:argv env:env]");

                    LOG_DEBUG("[main destroy]...");
                    [main destroy];
                } else {
                    LOG_ERROR("...failed on [ApplicationMain createWithApplication:sharedApplication]");
                }
            } else {
                LOG_ERROR("...failed on [Application sharedApplication]");
            }
            LOG_DEBUG("[autoreleasePool release]...");
            [autoreleasePool release];
        } else {
            LOG_ERROR("...failed on [[NSAutoreleasePool alloc] init]");
        }
        LOG_DEBUG("...} try");
    } catch (const ::xos::exception& e) {
        ERR_LOG_ERROR("...catch (::xos::exception& e.status() = " << e.status_to_string() << ")");
        err = 1;
    } catch (...) {
        ERR_LOG_ERROR("...catch (...)");
        err = 1;
    }
    return err;
}
