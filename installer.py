#!/bin/python3
import time
if __import__("os").geteuid() != 0:
	print("Need Root !")
	quit()
sleep = time.sleep
def call(x):
	x = str(x)
	r = __import__("subprocess").run(x.strip(), shell=True, capture_output=True, text=True)
	return r.stdout.strip() if len(r.stdout.strip()) > 1 else r.stderr.strip()
def pm(cmd, value):
	cmd, value = str(cmd), str(value)
	return call(f"pm {cmd} {value}")
def wm(cmd, value):
	cmd, value = str(cmd), str(value)
	return call(f"wm {cmd} {value}")
def dpi(dpi):
	dpi = str(dpi)
	wm("density", dpi)
def settings(cmd, partition, key, value = ""):
	cmd, partition, key, value = str(cmd), str(partition), str(key), str(value)
	r = ""
	if partition == "all":
		r += call(f"settings --user 0 {cmd} system {key} {value}")+";"
		r += call(f"settings --user 0 {cmd} secure {key} {value}")+";"
		r += call(f"settings --user 0 {cmd} global {key} {value}")+";"
		return r 
	else: return call(f"settings --user 0 {cmd} {partition} {key} {value}")
def realpath(path):
	path = str(path)
	return call(f"realpath \"/data/data/com.termux/files/home/roblox/{path}\"")
def installer(path):
	path = str(path)
	return pm("install", path)
def uninstaller(package):
	package = str(package)
	return pm("uninstall", package)
def init_dev():
	print("Setting ...")
	print("Cài đặt nhà phát triển: "+settings("put", "global", "development_settings_enabled", 1))
	print("smallest_width DPI: "+dpi(164))
	print("Buộc các hoạt động có thể thay đổi kích thước(dev): "+settings("put", "all", "development_force_resizable_activities", 1))
	print("Buộc các hoạt động có thể thay đổi kích thước: "+settings("put", "all", "force_resizable_activities", 1))
	print("Bật cửa sổ dạng tự do: "+settings("put", "global", "enable_freeform_support", 1))
	print("Done")
	sleep(3)
print("Path: " + call("pwd"))
call("curl -o \"" + realpath("Delta.pack") + "\" https://s3.cloudfly.vn/geeenzo/Delta.pack")
print("Installing....")
init_dev()
print("Installing Apps...")
print("MT Manager: " + installer("\"" + realpath("MT.pack") + "\""))
print("Floating App: " + installer("\"" + realpath("Floating.pack") + "\""))
print("Delta App: " + installer("\"" + realpath("Delta.pack") + "\""))
clone = input("Nhập số lượng clone cần cài(Max 10): ")
if int(clone) < 1:
	print("Done, reboot in 5s")
	sleep(5)
else:
	for i in range(1, int(clone)):
		pass
	print("Done, reboot in 5s")
	sleep(5)