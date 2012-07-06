# QtCreator project file

QT = core gui

CONFIG    = debug link_pkgconfig qt warn_on plugin shared
PKGCONFIG = jack liblo fluidsynth linuxsampler suil-0 alsa libpulse-simple

TARGET   = carla_backend
TEMPLATE = lib # app
VERSION  = 0.5.0

SOURCES = \
    ../carla_backend_standalone.cpp \
#    ../carla_engine.cpp \
#    ../carla_engine_jack.cpp \
#    ../carla_engine_rtaudio.cpp \
#    ../carla_engine_vst.cpp \
#    ../carla_bridge.cpp \
#    ../carla_osc.cpp \
    ../carla_shared.cpp \
    ../carla_threads.cpp \
    ../ladspa.cpp \
#    ../dssi.cpp \
#    ../lv2.cpp \
#    ../vst.cpp \
#    ../fluidsynth.cpp \
#    ../linuxsampler.cpp \
    ../lv2-rtmempool/rtmempool.c

HEADERS = \
    ../carla_backend.h \
    ../carla_backend_standalone.h \
    ../carla_engine.h \
    ../carla_midi.h \
    ../carla_osc.h \
    ../carla_plugin.h \
    ../carla_shared.h \
    ../carla_threads.h \
    ../../carla-includes/carla_includes.h \
    ../../carla-includes/carla_lib_includes.h \
    ../../carla-includes/carla_osc_includes.h \
    ../../carla-includes/carla_vst_includes.h \
    ../../carla-includes/ladspa_rdf.h \
    ../../carla-includes/lv2_rdf.h

INCLUDEPATH = .. \
    ../../carla-includes \
    ../../carla-includes/vst

DEFINES  = HAVE_SUIL WANT_FLUIDSYNTH WANT_LINUXSAMPLER
DEFINES += CARLA_ENGINE_JACK
DEFINES += CARLA_ENGINE_RTAUDIO
DEFINES += CARLA_ENGINE_LV2
DEFINES += CARLA_ENGINE_VST
DEFINES += CARLA_ENGINE_STANDALONE
#DEFINES += QTCREATOR_TEST
#DEFINES += CARLA_BACKEND_NO_NAMESPACE
#DEFINES += CARLA_BACKEND_NO_EXPORTS
LIBS    = ../../carla-lilv/carla_lilv.a -ldl

QMAKE_CXXFLAGS *= -fPIC -std=c++0x

INCLUDEPATH += ../rtaudio/rtaudio-4.0.11
SOURCES += ../rtaudio/rtaudio-4.0.11/RtAudio.cpp
DEFINES += _FORTIFY_SOURCE=2 HAVE_GETTIMEOFDAY __UNIX_JACK__ __LINUX_ALSA__ __LINUX_PULSE__
