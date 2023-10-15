// This file was generated by qtwaylandscanner
// source file is ../3rdparty/protocol/ivi-application.xml

#ifndef QT_WAYLAND_SERVER_IVI_APPLICATION
#define QT_WAYLAND_SERVER_IVI_APPLICATION

#include "wayland-server-core.h"
#include <QtWaylandCompositor/private/wayland-ivi-application-server-protocol.h>
#include <QByteArray>
#include <QMultiMap>
#include <QString>

#ifndef WAYLAND_VERSION_CHECK
#define WAYLAND_VERSION_CHECK(major, minor, micro) \
    ((WAYLAND_VERSION_MAJOR > (major)) || \
    (WAYLAND_VERSION_MAJOR == (major) && WAYLAND_VERSION_MINOR > (minor)) || \
    (WAYLAND_VERSION_MAJOR == (major) && WAYLAND_VERSION_MINOR == (minor) && WAYLAND_VERSION_MICRO >= (micro)))
#endif

QT_BEGIN_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_GCC("-Wmissing-field-initializers")
QT_WARNING_DISABLE_CLANG("-Wmissing-field-initializers")

#if !defined(Q_WAYLAND_SERVER_IVI_APPLICATION_EXPORT)
#  if defined(QT_SHARED)
#    define Q_WAYLAND_SERVER_IVI_APPLICATION_EXPORT Q_DECL_EXPORT
#  else
#    define Q_WAYLAND_SERVER_IVI_APPLICATION_EXPORT
#  endif
#endif

namespace QtWaylandServer {
    class Q_WAYLAND_SERVER_IVI_APPLICATION_EXPORT ivi_surface
    {
    public:
        ivi_surface(struct ::wl_client *client, int id, int version);
        ivi_surface(struct ::wl_display *display, int version);
        ivi_surface(struct ::wl_resource *resource);
        ivi_surface();

        virtual ~ivi_surface();

        class Resource
        {
        public:
            Resource() : ivi_surface_object(nullptr), handle(nullptr) {}
            virtual ~Resource() {}

            ivi_surface *ivi_surface_object;
            ivi_surface *object() { return ivi_surface_object; } 
            struct ::wl_resource *handle;

            struct ::wl_client *client() const { return wl_resource_get_client(handle); }
            int version() const { return wl_resource_get_version(handle); }

            static Resource *fromResource(struct ::wl_resource *resource);
        };

        void init(struct ::wl_client *client, int id, int version);
        void init(struct ::wl_display *display, int version);
        void init(struct ::wl_resource *resource);

        Resource *add(struct ::wl_client *client, int version);
        Resource *add(struct ::wl_client *client, int id, int version);
        Resource *add(struct wl_list *resource_list, struct ::wl_client *client, int id, int version);

        Resource *resource() { return m_resource; }
        const Resource *resource() const { return m_resource; }

        QMultiMap<struct ::wl_client*, Resource*> resourceMap() { return m_resource_map; }
        const QMultiMap<struct ::wl_client*, Resource*> resourceMap() const { return m_resource_map; }

        bool isGlobal() const { return m_global != nullptr; }
        bool isResource() const { return m_resource != nullptr; }

        static const struct ::wl_interface *interface();
        static QByteArray interfaceName() { return interface()->name; }
        static int interfaceVersion() { return interface()->version; }


        void send_configure(int32_t width, int32_t height);
        void send_configure(struct ::wl_resource *resource, int32_t width, int32_t height);

    protected:
        virtual Resource *ivi_surface_allocate();

        virtual void ivi_surface_bind_resource(Resource *resource);
        virtual void ivi_surface_destroy_resource(Resource *resource);

        virtual void ivi_surface_destroy(Resource *resource);

    private:
        static void bind_func(struct ::wl_client *client, void *data, uint32_t version, uint32_t id);
        static void destroy_func(struct ::wl_resource *client_resource);
        static void display_destroy_func(struct ::wl_listener *listener, void *data);

        Resource *bind(struct ::wl_client *client, uint32_t id, int version);
        Resource *bind(struct ::wl_resource *handle);

        static const struct ::ivi_surface_interface m_ivi_surface_interface;

        static void handle_destroy(
            ::wl_client *client,
            struct wl_resource *resource);

        QMultiMap<struct ::wl_client*, Resource*> m_resource_map;
        Resource *m_resource;
        struct ::wl_global *m_global;
        uint32_t m_globalVersion;
        struct DisplayDestroyedListener : ::wl_listener {
            ivi_surface *parent;
        };
        DisplayDestroyedListener m_displayDestroyedListener;
    };

    class Q_WAYLAND_SERVER_IVI_APPLICATION_EXPORT ivi_application
    {
    public:
        ivi_application(struct ::wl_client *client, int id, int version);
        ivi_application(struct ::wl_display *display, int version);
        ivi_application(struct ::wl_resource *resource);
        ivi_application();

        virtual ~ivi_application();

        class Resource
        {
        public:
            Resource() : ivi_application_object(nullptr), handle(nullptr) {}
            virtual ~Resource() {}

            ivi_application *ivi_application_object;
            ivi_application *object() { return ivi_application_object; } 
            struct ::wl_resource *handle;

            struct ::wl_client *client() const { return wl_resource_get_client(handle); }
            int version() const { return wl_resource_get_version(handle); }

            static Resource *fromResource(struct ::wl_resource *resource);
        };

        void init(struct ::wl_client *client, int id, int version);
        void init(struct ::wl_display *display, int version);
        void init(struct ::wl_resource *resource);

        Resource *add(struct ::wl_client *client, int version);
        Resource *add(struct ::wl_client *client, int id, int version);
        Resource *add(struct wl_list *resource_list, struct ::wl_client *client, int id, int version);

        Resource *resource() { return m_resource; }
        const Resource *resource() const { return m_resource; }

        QMultiMap<struct ::wl_client*, Resource*> resourceMap() { return m_resource_map; }
        const QMultiMap<struct ::wl_client*, Resource*> resourceMap() const { return m_resource_map; }

        bool isGlobal() const { return m_global != nullptr; }
        bool isResource() const { return m_resource != nullptr; }

        static const struct ::wl_interface *interface();
        static QByteArray interfaceName() { return interface()->name; }
        static int interfaceVersion() { return interface()->version; }


        enum error {
            error_role = 0, // given wl_surface has another role
            error_ivi_id = 1, // given ivi_id is assigned to another wl_surface
        };

    protected:
        virtual Resource *ivi_application_allocate();

        virtual void ivi_application_bind_resource(Resource *resource);
        virtual void ivi_application_destroy_resource(Resource *resource);

        virtual void ivi_application_surface_create(Resource *resource, uint32_t ivi_id, struct ::wl_resource *surface, uint32_t id);

    private:
        static void bind_func(struct ::wl_client *client, void *data, uint32_t version, uint32_t id);
        static void destroy_func(struct ::wl_resource *client_resource);
        static void display_destroy_func(struct ::wl_listener *listener, void *data);

        Resource *bind(struct ::wl_client *client, uint32_t id, int version);
        Resource *bind(struct ::wl_resource *handle);

        static const struct ::ivi_application_interface m_ivi_application_interface;

        static void handle_surface_create(
            ::wl_client *client,
            struct wl_resource *resource,
            uint32_t ivi_id,
            struct ::wl_resource *surface,
            uint32_t id);

        QMultiMap<struct ::wl_client*, Resource*> m_resource_map;
        Resource *m_resource;
        struct ::wl_global *m_global;
        uint32_t m_globalVersion;
        struct DisplayDestroyedListener : ::wl_listener {
            ivi_application *parent;
        };
        DisplayDestroyedListener m_displayDestroyedListener;
    };
}

QT_WARNING_POP
QT_END_NAMESPACE

#endif
