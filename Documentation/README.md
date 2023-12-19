<h1>Inception of Things</h1>

<details>
<summary><b>Part one</b></summary>
<br>

We need to set up two virtual machines with *vagrant* and install <b>K3s</b> respectively in <b>controller mode</b> and <b>agent mode</b> (server and worker).:
<ul>
	<li>first one as <b>Server</b> (-> sufixed with 'S')</li>
	<li> second as <b>Server Worker</b> (-> sufixed with 'SW')</li>
</ul>

We must have dedicated IP on <b>eth1</b> interface:
<ul>
	<li>Server will be on <b>192.168.56.110</b></li>
	<li>Worker will be on <b>192.168.56.111</b></li>
</ul>

We also must be able to connect with ssh on both machine with <b>no password</b>.

After doing that, we have to setup k3s cluster:<br>
<img src ="./images/Kub_cluster_map.png"/><br>


<br>
After setting up our Vagrantfile, we connect to the server node and can see machines are ready with right role and address:<br>

```shell
vagrant up
vagrant ssh jcervoniS
kubectl get nodes -o wide
```
<img src ="./images/p1_nodes.png"/><br>

</details>
<details>
<summary><b>Part two</b></summary>

In this part we have to deploy 3 apps in <b>*one*</b> cluster.<br>
We will have to respect 3 points here:
<ul>
	<li>the 3 apps should be reachable at the same ip address, with a different HOST</li>
	<li>app 2 should have 3 replicas</li>
	<li>by default if no host is provided we should reach app 3</li>
</ul>

Each app will be configured in a \<*app_name*\><b>.yml</b> file, we'll do the same for services and network.<br>
Architecture example:<br>
```
p2/
| --- Vagrantfile
| --- app1.yml
| --- app2.yml
| --- app3.yml
| --- services.yml
| --- ingress.yml
```

</details>
<details>
<summary><b>Part three</b></summary>
</details>

<details>
<summary><b>Resources</b></summary>
<ul>
	<details>
		<summary>Vagrant</summary>
		<ul>
			<li><a href="https://www.vagrantup.com/">Vagrant</a></li>
			<li><a href="https://developer.hashicorp.com/vagrant/docs/vagrantfile">vagrantfile</a></li>
		</ul>
	</details>
	<details>
		<summary>Kubernetes</summary>
		<ul>
			<li><a href="https://kubernetes.io/fr/">Kubernetes</a></li>
			<li><a href="https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/">Kubectl<a></li>
			<li><a href="https://kubernetes.io/docs/concepts/services-networking/ingress/">Ingress</li>
			<li><a href="https://kubernetes.io/docs/concepts/workloads/controllers/deployment/">Deployment</li>
			<li><a href="https://ubernetes.io/docs/concepts/services-networking/serice/">Service</li>
		</ul>
	</details>
</ul>
</details>