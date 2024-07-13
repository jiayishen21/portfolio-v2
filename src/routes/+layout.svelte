<script>
	import Navbar from './Navbar.svelte';
	import './styles.css';
</script>

<div class="app">
	<div class="navbar-container">
		<Navbar />
	</div>

	<main>
		<slot />
	</main>
</div>

<style>
	.app {
		position: relative;
	}

	.navbar-container {
		height: 100vh;
		position: fixed;
		top: 0;
		z-index: 1000;
	}

	@media (max-width: 950px) {
		.navbar-container {
			display: none;
		}
	}
</style>
