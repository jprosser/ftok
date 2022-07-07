# ftok
flask to kubernetes

I'm using nerdctl and Rancher Desktop on this app to test things out.  To fire up the container much like Docker or Podman:
```
$ nerdctl build -t flask:1.0 .
$ nerdctl run -it --rm flask:1.0
```
To move over to the kubernetes side still using nerdctl, we build the image for that side with:
```
$ nerdctl --namespace k8s.io build -t ftok:1.0 .
```
Using helm to bring it up on the kubernetes side:
```
$ cd helm/
$ helm install ftok ./ftok
```
We're using the default namespace here so we can check out the results with:
```
$ kubectl get pods
NAME                    READY   STATUS    RESTARTS   AGE
ftok-54b6fccd74-dzzpk   1/1     Running   0          8s
```