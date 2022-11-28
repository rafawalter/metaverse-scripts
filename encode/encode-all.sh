script_dir=$(dirname $0)

time (
	$script_dir/encode-720.sh $1
	$script_dir/encode-1440.sh $1
	$script_dir/encode-1920.sh $1
	$script_dir/encode-3840.sh $1
	$script_dir/encode-5760.sh $1
)