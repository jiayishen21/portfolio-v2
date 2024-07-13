<script lang="ts">
	import Footer from './Footer.svelte';
	import Hero from './Hero.svelte';
	import Projects from './Projects.svelte';
	import Technologies from './Technologies.svelte';
	import Work from './Work.svelte';
</script>

<svelte:head>
	<title>Lucas Shen</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<div class="center-content">
	<div class="container">
		<Hero />
		<Work />
		<Projects />
		<Technologies />
		<Footer />
	</div>
</div>

<style>
	.center-content {
		margin: auto;
		width: 100%;
		max-width: 85rem;
	}

	.container {
		padding: 0 13rem;
	}

	@media (max-width: 950px) {
		.container {
			padding: 0 6rem;
		}
	}

	@media (max-width: 600px) {
		.container {
			padding: 0 3rem;
		}
	}
</style>
