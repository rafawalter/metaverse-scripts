export width=$1
export height=$(($width/2))
export input=$2

# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
export filename="${input%.*}"
export extension="${input##*.}"

# echo $filename $extension
# exit

HandBrakeCLI \
  --optimize\
  --two-pass\
  --turbo\
  --vb\
  -w $width\
  -l $height\
  -i $input\
  -o "$filename.${width}x${height}.$extension"
