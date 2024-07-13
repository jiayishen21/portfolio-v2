<section>
	<h2>Thanks for visiting 👋</h2>
	<p>
		Connect with me over
		<a href="mailto:lucasshen21@gmail.com"> email </a>
		and let's build something cool <span class="flashy-text">together!</span>
	</p>
</section>

<style>
	section {
		margin-top: 8rem;
		margin-bottom: 10rem;
		padding-top: 4rem;
		border-top: 3px solid var(--color-black-3);
	}

	h2 {
		font-size: 2.5rem;
		margin-bottom: 1rem;
		font-family: var(--font-heading);
	}

	p {
		font-size: 1.3rem;
		line-height: 2.3rem;
		color: var(--color-black-2);
		font-family: var(--font-heading);
	}

	p a {
		color: var(--color-white-0);
		font-weight: bold;
		transition: 0.5s ease-out;
	}

	@media (max-width: 1000px) {
		h2 {
			font-size: 2rem;
		}

		p {
			font-size: 1.25rem;
			line-height: 2.2rem;
		}
	}

	.flashy-text {
		font-weight: bold;
		background: linear-gradient(90deg, #e24acd, #517fff, #e24acd);
		background-size: 300%;
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		animation: gradientText 2s infinite;
	}

	@keyframes gradientText {
		0% {
			background-position: 0% 50%;
		}
		50% {
			background-position: 100% 50%;
		}
		100% {
			background-position: 0% 50%;
		}
	}
</style>
