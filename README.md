<h1>Inception of Things</h1>

<details>
<summary><b>Part one</b></summary>
<br>

We need to set up two virtual machines with *vagrant*:
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
<img src ="./p1/Docs/Kub_cluster_map.png"/><br>


<br>
</details>
<details>
<summary><b>Part two</b></summary>
<h2><a href="https://kubernetes.io/fr/">Kubernetes</a></h2>

We have to install <b>K3s</b> respectively in <b>controller mode</b> and <b>agent mode</b> (server and worker).

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
			<li><a href="https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/">kubectl<a>
		</ul>
	</details>
</ul>
</details>