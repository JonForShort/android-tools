#!/usr/bin/env bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

release_folder="${cwd}/latest"
if [[ -f ${release_folder} ]]; then
    echo "error: unable to find release folder"
    exit -1
fi

if [ $# -ne 1 ]; then
    echo "error: must specify path to output directory"
    exit -2
fi

output_folder=$(readlink -f ${1})
if [[ -f ${output_folder} ]]; then
    echo "error: must specify path to output directory; found a file path"
    exit -3
fi

mkdir -p ${output_folder} || true

temp_folder=$(mktemp -d)

for i in $(ls ${release_folder}); do
    cp -RT ${release_folder}/${i} ${temp_folder}
done

output_file=${output_folder}/android-tools.tgz

tar -zcvf ${output_file} -C ${temp_folder} .

echo ""
echo "release created successfully"
echo ""
echo "${output_file}"
echo ""
