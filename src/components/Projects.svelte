<script lang="ts">
	const workCount = 3;
	let showDetails: boolean[] = Array(workCount).fill(false);

	const toggleDetails = (index: number) => {
		showDetails[index] = !showDetails[index];
	};
</script>

<section id="projects">
	<h2>Projects</h2>
	<p class="disclaimer">
		Here are some of the <b>memorable</b> or
		<span class="flashy-text">flashy</span> projects I've worked on. I will try to update this as I work
		on new things.
	</p>

	<h4>
		<a href="https://github.com/jazyz/UFCFightPredictor" target="_blank"> betUFC </a>
		<span class="duration">(Dec 2023 - Jan 2024)</span>
	</h4>
	<button on:click={() => toggleDetails(0)} class="toggle-details">
		{showDetails[0] ? 'Show less' : 'Show more'}
	</button>

	<div class={showDetails[0] ? 'details' : 'details hide-details'}>
		<ul>
			<li>
				<b>Regularized data</b> and engineered features for <b>regression</b> algorithm with
				<b>LightGBM</b> and <b>Flask</b> to predict UFC fight outcomes.
			</li>
			<li>
				Fixed class imbalance that arose from a limited dataset, bringing results that differed by
				around <b>10%</b> to under <b>2%</b>, generating 20.3% ROI over 4 months, by modifying
				training data
			</li>
			<li>
				Optimized the model’s <b>AWS</b> deployment, reducing timeouts by 30% by multithreading and adjusting
				worker counts.
			</li>
		</ul>
	</div>

	<h4>
		<a href="https://www.marbleinvestments.ca/" target="_blank"> Marble Investments </a>
		<span class="duration">(Nov 2023 - Dec 2023)</span>
	</h4>
	<button on:click={() => toggleDetails(1)} class="toggle-details">
		{showDetails[1] ? 'Show less' : 'Show more'}
	</button>

	<div class={showDetails[1] ? 'details' : 'details hide-details'}>
		<ul>
			<li>
				Built full-stack web app with <b>Next.js, React, and MongoDB</b> for an investment club, handling
				transactions and newsletters.
			</li>
			<li>
				Processed membership fees using <b>Stripe API</b> and managed 2FA using React Email and Resend.
			</li>
		</ul>
	</div>

	<h4>
		<a href="https://jiayishen21.github.io/sorting-algorithms/" target="_blank">
			Visual Sorting Algorithms
		</a>
		<span class="duration">(May 2023 - Aug 2023)</span>
	</h4>
	<button on:click={() => toggleDetails(2)} class="toggle-details">
		{showDetails[2] ? 'Show less' : 'Show more'}
	</button>

	<div class={showDetails[2] ? 'details' : 'details hide-details'}>
		<ul>
			<li>
				Animated comparisons and swaps of sorting algorithms through DOM manipulation, <b>React</b> hooks,
				and state variables.
			</li>
			<li>
				Manipulated promises to work around React’s data binding with state variables to allow for
				timed animations.
			</li>
		</ul>
	</div>
</section>

<style>
	section {
		margin: 4rem 0;
		padding-top: 4rem;
		border-top: 3px solid var(--color-black-3);
	}

	h2 {
		font-size: 2.5rem;
		margin-bottom: 1rem;
		font-family: var(--font-heading);
	}

	.disclaimer {
		font-size: 1.3rem;
		line-height: 2.3rem;
		color: var(--color-black-2);
		font-family: var(--font-heading);
	}

	.details {
		transition:
			max-height 1s,
			opacity 0.5s ease-in;
		max-height: 1000px;
		overflow: hidden;
		opacity: 1;
	}

	.hide-details {
		max-height: 0;
		opacity: 0;
	}

	.toggle-details {
		font-family: var(--font-body);
		font-size: 1.2rem;
		color: var(--color-black-2);
		font-weight: 600;
	}

	ul {
		margin: 1rem 2rem;
	}

	ul li {
		list-style-type: disc;
		font-size: 1.2rem;
		line-height: 1.5rem;
		margin: 0.8rem 0;
		color: var(--color-black-2);
	}

	h4 {
		margin-top: 1.5rem;
		margin-bottom: 1rem;
		font-size: 1.4rem;
		font-weight: normal;
		font-family: var(--font-heading);
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-content: space-between;
	}

	h4 a {
		font-size: 1.9rem;
		font-weight: bold;
		font-family: var(--font-fancy);
		font-style: italic;
	}

	h4 a {
		transition: 0.5s ease-out;
	}

	h4 a:hover {
		color: var(--color-black-2);
	}

	@media (max-width: 1350px) {
		h4 {
			align-items: start;
		}

		.duration {
			margin-top: 0.6rem;
		}
	}

	@media (max-width: 1150px) {
		h4 {
			flex-direction: column;
		}
	}

	@media (max-width: 1000px) {
		h2 {
			font-size: 2rem;
		}

		.disclaimer {
			font-size: 1.25rem;
			line-height: 2.2rem;
		}

		h4 a {
			font-size: 1.7rem;
		}

		.duration {
			font-size: 1.2rem;
		}

		.toggle-details {
			font-size: 1.2rem;
		}

		ul {
			margin: 1rem 1.2rem;
		}

		ul li {
			font-size: 1.1rem;
			line-height: 1.5rem;
		}
	}
</style>
