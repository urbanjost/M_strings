#!/bin/bash
cd $(dirname $0)
export GITHUB=TRUE
export DEMO_OUTDIR=../../example
export DEMO_SUBDIR=FALSE
GPF_build_module M_strings M_strings_oop
exit
