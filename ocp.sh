function ocp () {
    oc project "$@"
    export TILLER_NAMESPACE="$@"
}
