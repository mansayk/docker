#!/bin/bash
set -e

exec $@ | apertium -d /usr/share/apertium tat-morph
