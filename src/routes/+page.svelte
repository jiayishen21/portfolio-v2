<script lang="ts">
	import Footer from '../components/Footer.svelte';
	import Hero from '../components/Hero.svelte';
	import Projects from '../components/Projects.svelte';
	import Technologies from '../components/Technologies.svelte';
	import Work from '../components/Work.svelte';
</script>

<svelte:head>
	<title>Lucas Shen</title>
	<meta
		name="description"
		content="Lucas's portfolio website. I display my work and projects here."
	/>
	<meta
		name="keywords"
		content="Lucas Shen, Portfolio, Fullstack Developer, Software Engineer, Frontend Developer, Backend Developer, Slime Scholars, University of Waterloo"
	/>
	<!-- graph tags for social media -->
	<meta property="og:title" content="Lucas Shen's Portfolio" />
	<meta
		property="og:description"
		content="Lucas's portfolio website. I display my work and projects here."
	/>
	<meta property="og:image" content="/og lucas portfolio.png" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="https://lucasshen.dev/" />
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
