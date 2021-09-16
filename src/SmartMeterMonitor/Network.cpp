#include "Network.h"
#include "Util.h"
#include <WiFi.h>
#include <Arduino.h>

void Network::init() {
    Serial.println("Beginning network setup...");
    wifiManager.setAPCallback(Network::configModeCallback);
    std::vector<const char *> menu = { "wifi","info","param","sep","restart","exit" };
    wifiManager.setMenu(menu);
    wifiManager.setTimeout(CONFIG_TIMEOUT);
    wifiManager.setAPClientCheck(false); // Timeout regardless if client is connected or not
    if(!wifiManager.autoConnect("CONFIGURE_ME", CONFIG_PASSWORD)) {
        Util::reboot(Util::RebootReason::NetworkOffline, "Failed to connect to WiFi and configuration mode timed out.");
    }
    Serial.println("WiFi connected.");
}

void Network::configModeCallback(WiFiManager *wifiManager) {
  Serial.println("Entered WiFi configuration mode...");
  Serial.print("IP: ");
  Serial.println(WiFi.softAPIP());
  Serial.print("SSID: ");
  Serial.println(wifiManager->getConfigPortalSSID());
  Serial.print("Password: ");
  Serial.println(CONFIG_PASSWORD);
}

void Network::process() {
    if(WiFi.status() != WL_CONNECTED) {
        Util::reboot(Util::RebootReason::NetworkOffline, "WiFi disconnected.");
    }
}
