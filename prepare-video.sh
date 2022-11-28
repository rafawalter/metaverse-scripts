script_dir=$(dirname $0)

time (
	$script_dir/metadata/mark-as-photosphere.sh $1
	$script_dir/encode/encode-all.sh $1
)