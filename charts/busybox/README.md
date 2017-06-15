# busybox - The Sanity Chart

### Sometimes it is about the system rather than the chart.  Need to: Test your CI?  Test a deployment process? Verify the cluster is running? Or just do something to invoke your cluster? Busybox can help.

### This chart runs a dummy process 'tail -f /dev/null' endlessly

```bash
helm repo add jfelten https://jfelten.github.io/helm-charts/charts
helm install jfelten/busybox
```

### now get busy, busy, busy...
