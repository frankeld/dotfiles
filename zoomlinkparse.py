import sys
import os

link = sys.argv[1]
domain = link.split("/")[2]
query = link.split("/")[4]
number = query.split("?")[0]

pwd = None
if len(query.split("?")) == 2:
	pwd = query.split("?")[1].split("=")[1]

# Form URL
target = "zoommtg://" + domain + "/join?confno=" + number

if pwd:
	target += "&pwd=" + pwd

print(target)
os.system("echo \"" + target + "\" | pbcopy")
print("sent to clipboard")

