#!/bin/python3
import time
if __import__("os").geteuid() != 0:
	print("Need Root !")
	quit()
sleep = time.sleep
def call(x):
	x = str(x)
	r = __import__("subprocess").run(x.strip(), shell=True, capture_output=True,
	text=True)
	return r.stdout.strip() if len(r.stdout.strip()) > 1 else r.stderr.strip()
def pm(cmd, value):
	cmd, value = str(cmd), str(value)
	return call(f"pm {cmd} {value}")
def wm(cmd, value):
	cmd, value = str(cmd), str(value)
	return call(f"wm {cmd} {value}")
def settings(cmd, partition, key, value):
	cmd, partition, key, value = str(cmd), str(partition), str(key), str(value)
	return call(f"settings {cmd} {partition} {key} {value}")
def realpath(path):
	path = str(path)
	return call(f"realpath \"{path}\"")
def installer(path):
	path = str(path)
	return pm("install", path)
def uninstaller(package):
	package = str(package)
	return pm("uninstall", package)
def dpi(value):
	value = str(value)
	return wm("smallest_width", value)
def init_dev():
	print("Setting ...")
	print("Set DPI: "+dpi(700))
	print("Buộc các hoạt động có thể thay đổi kích thước: "+settings("put", "global", "development_force_resizable_activities", 1))
	print("Bật cửa sổ dạng tự do: "+settings("put", "global", "enable_freeform_support", 1))
	print("Done")
	sleep(3)
print("Installing....")
init_dev()
print("Installing Apps...")
print("MT Manager: " + installer("\"" + realpath("MT.pack") + "\""))
print("Floating App: " + installer("\"" + realpath("Floating.pack") + "\""))
clone = "0"
while int(clone) not in range(1,11): clone = input("Nhập số lượng clone cần cài(Max 10): ")
for i in range(int(clone)):
	print(f"Delta Clone {i+1}: " + installer("\"" + realpath(f"Delta-{i}.pack") + "\""))
print("Done")