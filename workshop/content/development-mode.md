Create an image pull secret for use by the deployment.

```execute-1
kubectl create secret generic registry-credentials --from-file=.dockerconfigjson=$HOME/.docker/config.json --type=kubernetes.io/dockerconfigjson
```

Setup a watch for pods in the session namespace.

```execute-1
watch kubectl get pods
```

Run ``skaffold`` in development mode.

```execute-2
skaffold dev --namespace {{session_namespace}}
```

It is necessary to specify the namespace to which deployments will be made.

As this is the first time the command has been run, the container image will be built, pushed to the image registry and deployed.

Once the build and deployment has completed, click on the **Application** tab to view the web application.

Kill the watch for pods in the session namespace.

```execute-1
<ctrl-c>
```

Try changing the web application source code by editing ``wsgi.py`` and see how a new build and deployment is automatically run when the modified file is saved.
