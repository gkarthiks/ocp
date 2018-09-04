function ocp () {
    oc project "$@"
	if [ -z "$@" ] 
	then
		echo "Using project \"$TILLER_NAMESPACE\" as tiller-namespace.";
	 
	else
		export TILLER_NAMESPACE="$@";
		echo "Now using project \"$TILLER_NAMESPACE\" as tiller-namespace.";
	fi
}
