#!/bin/bash

## Generate emmylua annotations from protofiles (*.proto)
## Usage: pass folder and file paths to script
## Ouput will be in stout
## 
## Author: Maxim Tuprikov <insality@gmail.com>
## Github: https://github.com/Insality/emmylua-protoc-annotations
## License: MIT
## Date: 10.2020


### Exit on Cmd+C / Ctrl+C
trap "exit" INT
trap clean EXIT
set -e


original_path=$(pwd)
clean() {
	rm -f ${dump_file}
	cd $original_path
}

script_path="`dirname \"$0\"`"
cd $script_path

lua ./main.lua $@