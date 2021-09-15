#include "Network.h"
#include "OTA.h"
#include "PrometheusExporter.h"

#define IMPULSE_PIN 27
#define LED_PIN 32

Network network;
OTA ota;
PrometheusExporter exporter;

unsigned int impulseCount = 0;
unsigned long led_time = 0;

void IRAM_ATTR impulse() {
  if(digitalRead(IMPULSE_PIN) == LOW) {
    ++impulseCount;
    exporter.setImpulses(impulseCount);
    digitalWrite(LED_PIN, HIGH);
    led_time = millis();
  }
}

void setup() {
  Serial.begin(115200);
  network.init();
  ota.init();
  exporter.init();
  pinMode(LED_PIN, OUTPUT);
  pinMode(IMPULSE_PIN, INPUT_PULLUP);
  attachInterrupt(IMPULSE_PIN, impulse, FALLING);
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
