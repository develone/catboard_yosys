import serial
file = open("led_on.bin","wb")
file.write("\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39\x41\x42")
file.close
file = open("led_on.bin", "rb")
data = file.read(12)
ser = serial.Serial ("/dev/ttyAMA0")    
ser.baudrate = 115200                      

print data
ser.write(data) 
reply = ser.read(12) 
print "this is the reply", reply 
file.close

