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
///   File: Base.hh
///
/// Author: $author$
///   Date: 4/25/2018
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_BASE_BASE_HH
#define _CACAO_BASE_BASE_HH

#include "xos/base/attached.hpp"
#include "xos/base/created.hpp"
#include "xos/base/opened.hpp"
#include "xos/base/array.hpp"
#include "xos/base/string.hpp"
#include "xos/base/to_string.hpp"

namespace cacao {

typedef xos::implement_base implement_base;
typedef xos::base base;

typedef xos::char_array char_array;
typedef xos::tchar_array tchar_array;
typedef xos::wchar_array wchar_array;
typedef xos::byte_array byte_array;
typedef xos::word_array word_array;

typedef xos::char_string char_string;
typedef xos::tchar_string tchar_string;
typedef xos::wchar_string wchar_string;
typedef xos::byte_string byte_string;
typedef xos::word_string word_string;

} /// namespace cacao

#endif /// _CACAO_BASE_BASE_HH 
