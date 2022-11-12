//ESP8266 Based Patient Health Monitoring System
#include <ESP8266WebServer.h>
#include <Wire.h>
#include "MAX30100_PulseOximeter.h"
#include <OneWire.h>
#include <DallasTemperature.h>
#include <DNSServer.h>
#include <WiFiManager.h> 
#include "DHT.h"
#include "Adafruit_GFX.h"
#include "OakOLED.h"
 
#define DHTTYPE DHT11
#define DHTPIN 13 //D7 pin= GPIO pin 13
#define DS18B20 2 //D4 pin= GPIO pin 2
#define REPORTING_PERIOD_MS     1000  //
OakOLED oled;

float temperature, humidity, BPM, SpO2, bodytemperature;

/*Put your SSID & Password*/
//const char* ssid = "BULLETS";  // Enter SSID here
//const char* password = "garden1234";  //Enter Password here

DHT dht(DHTPIN, DHTTYPE);; //--> Initialize DHT sensor, DHT dht(Pin_used, Type_of_DHT_Sensor);
PulseOximeter pox;
uint32_t tsLastReport = 0;
OneWire oneWire(DS18B20);
DallasTemperature sensors(&oneWire);

 
const unsigned char bitmap [] PROGMEM=
{
0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x18, 0x00, 0x0f, 0xe0, 0x7f, 0x00, 0x3f, 0xf9, 0xff, 0xc0,
0x7f, 0xf9, 0xff, 0xc0, 0x7f, 0xff, 0xff, 0xe0, 0x7f, 0xff, 0xff, 0xe0, 0xff, 0xff, 0xff, 0xf0,
0xff, 0xf7, 0xff, 0xf0, 0xff, 0xe7, 0xff, 0xf0, 0xff, 0xe7, 0xff, 0xf0, 0x7f, 0xdb, 0xff, 0xe0,
0x7f, 0x9b, 0xff, 0xe0, 0x00, 0x3b, 0xc0, 0x00, 0x3f, 0xf9, 0x9f, 0xc0, 0x3f, 0xfd, 0xbf, 0xc0,
0x1f, 0xfd, 0xbf, 0x80, 0x0f, 0xfd, 0x7f, 0x00, 0x07, 0xfe, 0x7e, 0x00, 0x03, 0xfe, 0xfc, 0x00,
0x01, 0xff, 0xf8, 0x00, 0x00, 0xff, 0xf0, 0x00, 0x00, 0x7f, 0xe0, 0x00, 0x00, 0x3f, 0xc0, 0x00,
0x00, 0x0f, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};


ESP8266WebServer server(80);

void onBeatDetected()
{
    //Serial.println("Beat Detected!");
    oled.drawBitmap( 60, 20, bitmap, 28, 28, 1);
    oled.display();
}



void setup() {
  Serial.begin(115200);//115200
  WiFiManager wifiManager;
  wifiManager.autoConnect("AutoConnectAP");
  Serial.println("Wifi connected...yeey :)");
  oled.begin();
  oled.clearDisplay();
  oled.setTextSize(2);
  oled.setTextColor(1);
  oled.setCursor(0, 0);
  oled.println("Initializing pulse oximeter..");
  oled.display();

  
  pinMode(14, INPUT); // Setup for leads off detection LO +
  pinMode(12, INPUT); // Setup for leads off detection LO -
  pinMode(16, OUTPUT);
  //delay(100);
  Serial.println(F("DHTxx test!"));
  dht.begin();
  Serial.println("Connecting to ");
  //Serial.println(ssid);

  //connect to your local wi-fi network
  //WiFi.begin(ssid, password);

  //check wi-fi is connected to wi-fi network
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected..!");
  Serial.print("Got IP: ");  Serial.println(WiFi.localIP());

  server.on("/", handle_OnConnect);
  server.onNotFound(handle_NotFound);

  server.begin();
  Serial.println("HTTP server started");

  Serial.print("Initializing pulse oximeter..");

  if (!pox.begin()) {
    Serial.println("FAILED");
    oled.clearDisplay();
    oled.setTextSize(2);
    oled.setTextColor(1);
    oled.setCursor(0, 0);
    oled.println("FAILED");
    oled.display();
    for (;;);
  } else {
     oled.clearDisplay();
     oled.setTextSize(2);
     oled.setTextColor(1);
     oled.setCursor(0, 0);
     oled.println("SUCCESS");
     oled.display();
     Serial.println("SUCCESS");
     //pox.setIRLedCurrent(MAX30100_LED_CURR_7_6MA);
     pox.setOnBeatDetectedCallback(onBeatDetected);
  }
  
}
void loop() {
  server.handleClient();
  pox.update();
  sensors.requestTemperatures();
  if((digitalRead(10) == 1)||(digitalRead(11) == 1)){
   Serial.println('!');
   }
  else{
  // send the value of analog input 0:
  //Serial.println(analogRead(A0));
  }
  //Wait for a bit to keep serial data from saturating
  delay(1);



  if (millis() - tsLastReport > REPORTING_PERIOD_MS) {
    float t = dht.readTemperature();
    String Temperature_Value = String(t);
    float h = dht.readHumidity();
    String Humidity_Value = String(h);
    bodytemperature = sensors.getTempCByIndex(0);
    
    temperature = t;
    humidity = h;
    
    BPM = pox.getHeartRate();
    SpO2 = pox.getSpO2();
   
    
    Serial.print("Room Temperature: ");
    Serial.print(t);
    Serial.println("°C");

    Serial.print("Room Humidity: ");
    Serial.print(h);
    Serial.println("%");

    Serial.print("BPM: ");
    Serial.println(BPM);

    Serial.print("SpO2: ");
    Serial.print(SpO2);
    Serial.println("%");

    Serial.print("Body Temperature: ");
    Serial.print(bodytemperature);
    Serial.println("°C");

    oled.clearDisplay();
    oled.setTextSize(2);
    oled.setTextColor(1);
    oled.setCursor(0,16);
    oled.println(pox.getHeartRate());
 
     oled.setTextSize(2);
     oled.setTextColor(1);
     oled.setCursor(0, 0);
     oled.println("Heart BPM");
 
      oled.setTextSize(2);
      oled.setTextColor(1);
      oled.setCursor(0, 30);
      oled.println("Spo2");
 
      oled.setTextSize(2);
      oled.setTextColor(1);
      oled.setCursor(0,45);
      oled.println(pox.getSpO2());
      oled.display();

    Serial.println("*********************************");
    Serial.println();
    tsLastReport = millis();
  }


}

void handle_OnConnect() {

  server.send(200, "text/html", SendHTML(temperature, humidity, BPM, SpO2, bodytemperature));
}

void handle_NotFound() {
  server.send(404, "text/plain", "Not found");
}

String SendHTML(float temperature, float humidity, float BPM, float SpO2, float bodytemperature) {
String html = "<!DOCTYPE html>";
html += "<html>";
html += "<head>";
html += "<title>Patient Health Monitoring</title>";
html += "<meta name='viewport' content='width=device-width, initial-scale=1.0'>";
html += "<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css'>";
html += "<link rel='stylesheet' type='text/css' href='styles.css'>";
html += "<style>";
html += "body { background-color: #fff; font-family: sans-serif; color: #333333; font: 14px Helvetica, sans-serif box-sizing: border-box;}";
html += "#page { margin: 20px; background-color: #fff;}";
html += ".container { height: inherit; padding-bottom: 20px;}";
html += ".header { padding: 20px;}";
html += ".header h1 { padding-bottom: 0.3em; color: #008080; font-size: 45px; font-weight: bold; font-family: Garmond, 'sans-serif'; text-align: center;}";
html += "h2 { padding-bottom: 0.2em; border-bottom: 1px solid #eee; margin: 2px; text-align: left;}";
html += ".header h3 { font-weight: bold; font-family: Arial, 'sans-serif'; font-size: 17px; color: #b6b6b6; text-align: center;}";
html += ".box-full { padding: 20px; border 1px solid #ddd; border-radius: 1em 1em 1em 1em; box-shadow: 1px 7px 7px 1px rgba(0,0,0,0.4); background: #fff; margin: 20px; width: 300px;}";
html += "@media (max-width: 494px) { #page { width: inherit; margin: 5px auto; } #content { padding: 1px;} .box-full { margin: 8px 8px 12px 8px; padding: 10px; width: inherit;; float: none; } }";
html += "@media (min-width: 494px) and (max-width: 980px) { #page { width: 465px; margin 0 auto; } .box-full { width: 380px; } }";
html += "@media (min-width: 980px) { #page { width: 930px; margin: auto; } }";
html += ".sensor { margin: 12px 0px; font-size: 2.5rem;}";
html += ".sensor-labels { font-size: 1rem; vertical-align: middle; padding-bottom: 15px;}";
html += ".units { font-size: 1.2rem;}";
html += "hr { height: 1px; color: #eee; background-color: #eee; border: none;}";
html += "</style>";

//Ajax Code Start
  html += "<script>\n";
  html += "setInterval(loadDoc,1000);\n";
  html += "function loadDoc() {\n";
  html += "var xhttp = new XMLHttpRequest();\n";
  html += "xhttp.onreadystatechange = function() {\n";
  html += "if (this.readyState == 4 && this.status == 200) {\n";
  html += "document.body.innerHTML =this.responseText}\n";
  html += "};\n";
  html += "xhttp.open(\"GET\", \"/\", true);\n";
  html += "xhttp.send();\n";
  html += "}\n";
  html += "</script>\n";
  //Ajax Code END
  
html += "</head>";
html += "<body>";
html += "<div id='page'>";
html += "<div class='header'>";
html += "<h1>Health Monitoring System</h1>";
html += "<h3><a href='https://theiotprojects.com'>https://theiotprojects.com</a></h3>";
html += "</div>";
html += "<div id='content' align='center'>";
html += "<div class='box-full' align='left'>";
html += "<h2>Sensors Readings</h2>";
html += "<div class='sensors-container'>";

//For Temperature
html += "<div class='sensors'>";
html += "<p class='sensor'>";
html += "<i class='fas fa-thermometer-half' style='color:#0275d8'></i>";
html += "<span class='sensor-labels'> Room Temperature </span>";
html += (int)temperature;
html += "<sup class='units'>°C</sup>";
html += "</p>";
html += "<hr>";
html += "</div>";

//For Humidity
html += "<div class='sensors'>";
html += "<p class='sensor'>";
html += "<i class='fas fa-tint' style='color:#5bc0de'></i>";
html += "<span class='sensor-labels'> Room Humidity </span>";
html += (int)humidity;
html += "<sup class='units'>%</sup>";
html += "</p>";
html += "<hr>";

//For Heart Rate
html += "<p class='sensor'>";
html += "<i class='fas fa-heartbeat' style='color:#cc3300'></i>";
html += "<span class='sensor-labels'> Heart Rate </span>";
html += (int)BPM;
html += "<sup class='units'>BPM</sup>";
html += "</p>";
html += "<hr>";

//For Sp02
html += "<p class='sensor'>";
html += "<i class='fas fa-burn' style='color:#f7347a'></i>";
html += "<span class='sensor-labels'> Sp02 </span>";
html += (int)SpO2;
html += "<sup class='units'>%</sup>";
html += "</p>";
html += "<hr>";

//For Body Temperature
html += "<p class='sensor'>";
html += "<i class='fas fa-thermometer-full' style='color:#d9534f'></i>";
html += "<span class='sensor-labels'> Body Temperature </span>";
html += (int)bodytemperature;
html += "<sup class='units'>°C</sup>";
html += "</p>";
html += "</div>";
html += "</div>";
html += "</div>";
html += "</div>";
html += "</div>";
html += "</body>";
html += "</html>";
return html;
}
