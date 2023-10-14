
#ifndef XDGICONLOADER_EXPORT_H
#define XDGICONLOADER_EXPORT_H

#ifdef XDGICONLOADER_STATIC_DEFINE
#  define XDGICONLOADER_EXPORT
#  define XDGICONLOADER_NO_EXPORT
#else
#  ifndef XDGICONLOADER_EXPORT
#    ifdef Qt5XdgIconLoader_EXPORTS
        /* We are building this library */
#      define XDGICONLOADER_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define XDGICONLOADER_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef XDGICONLOADER_NO_EXPORT
#    define XDGICONLOADER_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef XDGICONLOADER_DEPRECATED
#  define XDGICONLOADER_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef XDGICONLOADER_DEPRECATED_EXPORT
#  define XDGICONLOADER_DEPRECATED_EXPORT XDGICONLOADER_EXPORT XDGICONLOADER_DEPRECATED
#endif

#ifndef XDGICONLOADER_DEPRECATED_NO_EXPORT
#  define XDGICONLOADER_DEPRECATED_NO_EXPORT XDGICONLOADER_NO_EXPORT XDGICONLOADER_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef XDGICONLOADER_NO_DEPRECATED
#    define XDGICONLOADER_NO_DEPRECATED
#  endif
#endif

#endif /* XDGICONLOADER_EXPORT_H */
