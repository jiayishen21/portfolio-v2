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
				<b>Normalized data</b> for supervised machine learning with <b>LightGBM</b> to predict outcome
				of UFC fights.
			</li>
			<li>
				Modified the sampling of training data to fix <b>class imbalance</b> that arose from a
				limited dataset, bringing results that differed by around <b>10% to under 2%</b>.
			</li>
			<li>
				Wrote deploy scripts for <b>gunicorn</b> to host <b>Flask backend</b> and <b>React</b>
				frontend using <b>EC2</b> instances.
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
				Implemented <b>data compression</b> and memoization to reduce storage by around 3% while maintaining
				efficiency at runtime.
			</li>
			<li>
				Streamlined investment process using <b>Stripe API</b> and managed <b>2FA</b> using
				<b>React Email and Resend.</b>
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
