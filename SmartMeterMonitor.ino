#include "Network.h"
#include "OTA.h"

Network network;
OTA ota;

void setup() {
  Serial.begin(115200);
  network.init();
  ota.init();
}

void loop() {
  network.process();
  ota.process();
}
