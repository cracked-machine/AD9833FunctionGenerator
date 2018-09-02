#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);

void oled_setup() 
{

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3C (for the 128x32)
  display.display();
  display.clearDisplay();
}

void oled_set_text(int pSize, int pColour) 
{
  display.setTextSize(pSize);
  display.setTextColor(pColour);
}

void oled_reset() 
{
  display.clearDisplay();
  display.setCursor(0,0);
  
}

void oled_print(String msg)
{
  display.print(msg);
  display.display();
}

void oled_println(String msg)
{
  display.println(msg);
  display.display();
}

