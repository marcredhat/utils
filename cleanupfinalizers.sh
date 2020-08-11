for deploy in `oc get deploy -n keptn | awk '{print $1'}`
do
  oc patch deploy $deploy -n keptn --type=merge -p '{"metadata":{"finalizers":null}}'
done



for pod in `oc get pods -n keptn | awk '{print $1'}`
do
  oc patch pod $pod -n keptn --type=merge -p '{"metadata":{"finalizers":null}}'
done
