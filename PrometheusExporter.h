#ifndef PROMETHEUS_EXPORTER_H
#define PROMETHEUS_EXPORTER_H

#define WEB_PORT 80

#include <WiFi.h>
#include <string>

class PrometheusExporter {
    public:
        void init();
        void process();
        void setImpulses(unsigned int impulses);
    private:
        String header;
        int impulses = 0;
        void sendMetrics(WiFiClient &client);
};

#endif
