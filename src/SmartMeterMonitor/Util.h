#ifndef UTIL_H
#define UTIL_H

#include <Arduino.h>

class Util {
    public:
        enum RebootReason {
            NetworkOffline,
            ControllerDisconnected,
            ControllerTimeout,
            ExternalRequest,
            NFCInitFailed
        };
        static void reboot(RebootReason reason, String message, bool skipDelay = false);
    private:
        static constexpr unsigned long rebootDelay = 10000;
};

#endif