#include "PrometheusExporter.h"

WiFiServer server(WEB_PORT);

void PrometheusExporter::init() {
    Serial.println("Beginning prometheus exporter setup...");
    server.begin();
    Serial.println("Exporter running.");
}

void PrometheusExporter::setImpulses(unsigned int impulses) {
  this->impulses = impulses;
}

void PrometheusExporter::process() {
    WiFiClient client = server.available();   // Listen for incoming clients

    if (client) {
        String currentLine = "";
        while (client.connected()) {
            if (client.available()) {
                char c = client.read();
                header += c;
                if (c == '\n') {
                    if (currentLine.length() == 0) {
                        // end of client request
                        if (header.indexOf("GET /metrics") >= 0) {
                            // write metric
                            client.println("HTTP/1.1 200 OK");
                            client.println("Content-Type: text/html; charset=utf-8");
                            client.println("Connection: close");
                            client.println(); // end headers
                            sendMetrics(client);
                        } else if (header.indexOf("GET /") >= 0) {
                            // something else - link to metrics
                            client.println("HTTP/1.1 200 OK");
                            client.println("Content-Type: text/html; charset=utf-8");
                            client.println("Connection: close");
                            client.println(); // end headers
                            client.println(
                                "<html><head><title>ESP32 - Power Usage Sensor</title></head>"
                                "<body><h1>ESP32 - Power Usage Sensor</h1>"
                                "<p><a href=\"/metrics\">Metrics</a></p></body></html>");
                        } else {
                            // terminate with 400 bad request
                            client.println("HTTP/1.1 400 Bad Request");
                            client.println("Content-Type: text/html; charset=utf-8");
                            client.println("Connection: close");
                            client.println(); // end headers
                        }
                        break;
                    } else {
                        currentLine = "";
                    }
                } else if (c != '\r') {
                    currentLine += c;
                }
            }
        }
        header = "";
        client.stop();
    }
}

void PrometheusExporter::sendMetrics(WiFiClient &client) {
    client.printf("# HELP esp32_power_impulses Number of impulses from smart meter.\n");
    client.printf("# TYPE esp32_power_impulses counter\n");
    client.printf("esp32_power_impulses %d\n", impulses);
}
