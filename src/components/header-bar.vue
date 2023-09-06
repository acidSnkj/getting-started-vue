<template>
	<!-- As a heading -->
	<nav class="navbar bg-body-tertiary" id="mainHeader">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Navbar</span>
			<!-- TODO: Que se vea bonito con icono de github -->
			<a v-bind:href=github>Holis</a>
			<a :href=youtube>Youtube</a>
		</div>
	</nav>
</template>

<script>
export default {
	name: 'HeaderBar',
	data() {
		return {
			github: "https://github.com/acidSnkj/getting-started-vue",
			youtube: "https://www.youtube.com/watch?v=4deVCNJq3qc",
		}
	},
}
</script>

<style>

</style>