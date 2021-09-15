#include "Network.h"
#include "OTA.h"
#include "PrometheusExporter.h"

#define IMPULSE_PIN 34
#define LED_PIN 32

Network network;
OTA ota;
PrometheusExporter exporter;

int impulseCount = 0;
unsigned long led_time = 0;

void IRAM_ATTR impulse() {
  ++impulseCount;
  exporter.setImpulses(impulseCount);
  digitalWrite(LED_PIN, HIGH);
  led_time = millis();
}

void setup() {
  Serial.begin(115200);
  network.init();
  ota.init();
  exporter.init();
  pinMode(LED_PIN, OUTPUT);
  pinMode(IMPULSE_PIN, INPUT);
  attachInterrupt(IMPULSE_PIN, impulse, CHANGE);
}

void loop() {
  network.process();
  ota.process();
  exporter.process();

  if(led_time != 0 && millis() - led_time > 100) {
    digitalWrite(LED_PIN, LOW);
    led_time = 0;
  }
}
