#include "Util.h"

void Util::reboot(RebootReason reason, String message, bool skipDelay) {
    Serial.print("Rebooting: ");
    switch (reason)
    {
    case RebootReason::ControllerDisconnected:
        Serial.print("CONTROLLER_DISCONNECTED ");
        break;
    
    case RebootReason::ControllerTimeout:
        Serial.print("CONTROLLER_TIMEOUT ");
        break;

    case RebootReason::ExternalRequest:
        Serial.print("EXTERNAL_REQUEST ");
        break;

    case RebootReason::NetworkOffline:
        Serial.print("NETWORK_OFFLINE ");
        break;

    case RebootReason::NFCInitFailed:
        Serial.print("NFC_INIT_FAILED ");
        break;

    default:
        Serial.print("UNKNOWN_REASON ");
        break;
    }
    Serial.println(message);
    delay(rebootDelay);
    ESP.restart();
    for(;;) {} // Block
} 