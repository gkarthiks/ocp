# ocp
Change OC Project and set in TILLER_NAMESPACE env variable

If you are using OpenShift and moving through projects / namespaces constantly via `oc project <ns>` then you have a hard tilel to use `Helm`.

Atleast for me I felt that as a hard task. According to [`helm`](http://helm.sh), the *helm* needs to be instructed where the `tiller deployer` is. When executing the CLI, it looks for the `--tiller-namespace` flag or the `TILLER_NAMESPACE` envionment variable.

So I wrote a small `bash function` and `source`ed it into my profile. 
