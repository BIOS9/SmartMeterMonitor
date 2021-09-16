#ifndef NETWORK_H
#define NETWORK_H

#include <WiFiManager.h> 
#include <string>

class Network {
    public:
        void init();
        void process();
    private:
        static constexpr const int CONFIG_TIMEOUT = 300; // Timeout for configuration portal. Restart after timeout.
        static constexpr const char* const CONFIG_PASSWORD = "SuperSecurePassword";
        
        WiFiManager wifiManager;
        static void configModeCallback(WiFiManager *wifiManager);
        static void saveConfigCallback();
};

#endif
