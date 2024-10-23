#!/bin/python
import time
if __import__("os").geteuid() != 0:
	print("Need Root !")
	quit()
sleep = time.sleep
def call(x):
	x = str(x)
	r = __import__("subprocess").run(x.strip(), shell=True, capture_output=True, text=True)
	return r.stdout.strip() if len(r.stdout.strip()) > 0 else r.stderr.strip()
def pm(cmd, value):
	cmd, value = str(cmd), str(value)
	return call(f"pm {cmd} {value}")
def wm(cmd, value):
	cmd, value = str(cmd), str(value)
	return call(f"wm {cmd} {value}")
def dpi(dpi):
	dpi = str((1358 - int(dpi))//4)
	return wm("density", dpi)
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
	return call(f"realpath \"/data/data/com.termux/files/usr/roblox/{path}\"")
def installer(path):
	path = str(path)
	return pm("install", path)
def uninstaller(package):
	package = str(package)
	return pm("uninstall", package)
def patch(target, source):
	target, source = realpath(target), realpath(source)
	__import__("os").system(f"patch {target} < {source}")
def copy(source, target):
	target, source = realpath(target), realpath(source)
	__import__("os").system(f"cp -rf {source} {target}")
def rm(target):
	target = realpath(target)
	__import__("os").system(f"rm -rf {target}")
def listall():
	r = []
	for i in "abcdefghijkt":
		r.append("com.roblox.clien"+i)
	return r
def listinstalled():
	x = call("pm list packages | grep com.roblox").split("\n")
	r = []
	for i in x:
		r.append(i[8:])
	return r
def listnotinstalled():
	a = listall()
	b = listinstalled()
	r = []
	for i in a:
		if i not in b: r.append(i)
	return r
def display():
	__import__("os").system("clear")
	installed = listinstalled()
	notinstalled = listnotinstalled()
	i = 0
	print("Installed: ")
	for a in installed:
		print(f"{i} : [Installed] {a}")
		i += 1
	ied = range(i)
	k = i
	print("Uninstalled: ")
	for a in notinstalled:
		print(f"{i} : [Uninstalled] {a}")
		i += 1
	uied = range(k, i)
	print("\n-1 : quit")
	c = int(input("Change >> "))
	if c in range(k):
		print("Calling Remove App...")
		uninstaller(installed[c])
		input("OK, Back")
	elif c in range(k, i):
		print("Calling install App...")
		pack = notinstalled[c-k]
		copy("Delta.pack", "_"+pack+".pack")
		patch(f"_{pack}.pack", f"{pack}.pack")
		installer("\"" + realpath(f"_{pack}.pack") + "\"")
		rm(f"_{pack}.pack")
		input("OK, Back")
	elif c == -1:
		print("Out")
		quit()
	else:
		input("No optition")
while 1:
	display()