# ocp
Change OC Project and set in TILLER_NAMESPACE env variable

If you are using OpenShift and moving through projects / namespaces constantly via `oc project <ns>` then you have a hard tilel to use `Helm`.

Atleast for me I felt that as a hard task. According to [`helm`](http://helm.sh), the *helm* needs to be instructed where the `tiller deployer` is. When executing the CLI, it looks for the `--tiller-namespace` flag or the `TILLER_NAMESPACE` envionment variable.

Since, I felt it is so difficuilt to type every time two different commands, I wrote a small `bash function` and `source`ed it into my profile. 

So now, I have to do `ocp <ns>`. This will set my current context in OC and sets the tiller environment variable as well.


## TL:DR;

**Step 1:** Copy the below bash function

```shell
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
```

**Step 2:** Source it in your terminal.
```shell
. ocp.sh
```

**Step 3:** Execute the project change as 
```shell
ocp kube-system
```
and use `helm` commands without the `--tiller-namespace` flag.
