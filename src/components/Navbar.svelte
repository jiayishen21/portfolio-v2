<nav>
	<a href="#home"> 🏠 </a>
	<a href="#work"> 💼 </a>
	<a href="#projects"> 🚀 </a>
	<a href="#tech"> 🔨 </a>
</nav>

<style>
	nav {
		display: flex;
		flex-direction: column;
		background: var(--color-black-4);
		position: absolute;
		left: 3rem;
		top: 50%;
		transform: translate(0, -50%);
		border-radius: 10px;
		padding: 0.35rem 0;
	}

	nav a {
		border-radius: 10px;
		padding: 0.35rem;
		margin: 0.35rem 0.7rem;
		font-size: 2rem;
		background: var(--color-black-1);
		transition: 0.25s ease-in-out;
	}

	nav a:hover {
		background: var(--color-black-3);
		transform: scale(1.05);
	}
</style>
