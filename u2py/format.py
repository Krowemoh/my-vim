#!/usr/uv/python/bin/python3.4
import os
import sys
import u2py

os.chdir("..")
u2py.Command("FORMAT BP {}".format(sys.argv[1])).run()
