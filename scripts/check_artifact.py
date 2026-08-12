import sys

with open("artifact/message.txt") as f:
    content = f.read()

if "DevOps" in content:
    print("PASS: 'DevOps' found")
    sys.exit(0)
else:
    print("FAIL: 'DevOps' not found")
    sys.exit(1)