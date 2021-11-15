#!/bin/bash

#Mount and Install Mbox
 hdiutil attach ~/Desktop/Mbox\ Studio\ v444\ r10564*.dmg
 installer -pkg /Volumes/Mbox\ Studio\ v4.4.4\ r10564/*.pkg -target /Applications
