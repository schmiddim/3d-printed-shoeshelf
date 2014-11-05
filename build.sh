#!/bin/bash

openscad back-lower.scad -s stl/back-lower.stl
openscad connector-left.scad -s stl/connector-left.stl
openscad connector-right.scad -s stl/connector-right.stl
openscad front-lower.scad -s stl/front-lower.stl
openscad top.scad -s stl/top.stl
