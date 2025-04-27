<script lang="ts">
	const projects = [
		{
			title: 'Firepit',
			link: 'https://firepit.link/',
			duration: '(Feb 2025 - Present)',
			details: [
				'Work in progress. We are gonna ship the MVP soon :)',
				"Built a <b>React</b> + <b>Express</b> webapp for to make co-working and group studying more focused by having users screeshare what they're working on.",
				'Implemented type-safe clients for socket events and API calls using OpenAPI and quick types, improving reliability and dev experience.',
				'Conducted <b>user interviews</b> on Firepit to identify pain points in the new user experience and core product. Then, designed and iterated onboarding and core product features based on feedback.'
			]
		},
		{
			title: 'Vm Text Editor',
			link: 'https://youtu.be/O6NnQ4tKnq0?si=8MzkvbfJ7qXH6Qyu',
			duration: '(Dec 2024 - Dec 2024)',
			details: [
				'<b>C++</b> final project for CS246E (Object-Oriented Software Development)',
				'Used command and factory <b>design patterns</b> with <b>RAII</b> to cleanly implement Vim commands and their interactions with each other.',
				'Wrote shell scripts to create a testing suite to check memory leaks and correctness.'
			]
		},
		{
			title: 'herizon',
			link: 'https://herizon.xyz/',
			duration: '(Sep 2024 - Sep 2024)',
			details: [
				'Designed and built landing page for a female entrepreneurship club using <b>Svelte</b>.'
			]
		},
		{
			title: 'Retrospect',
			duration: '(Mar 2024 - Apr 2024)',
			details: [
				'Built an app to track memorable experiences with <b>RESTful Go stdlib</b> backend, using <b>Gorilla Mux</b> for routing, <b>MySQL</b> and <b>Google Cloud Buckets</b> as an object store and CDN.',
				'Configured <b>crontab</b> and <b>SendGrid</b> on Google Cloud infrastructure to automate email notifications.',
				'Designed a <b>social recommendation algorithm</b> using a <b>social graph</b> to build an effective referral program.'
			]
		},
		{
			title: 'unfollowed.lol',
			link: 'https://unfollowed.lol/',
			duration: '(Feb 2024 - Mar 2024)',
			details: [
				"Built <b>JavaScript</b> browser extension that leverages Instagram's internal client-side APIs to comply with server-side rate limits.",
				"Streamlined <b>Postgres</b> queries using Django's ORM, also cutting data redundancy by <b>80%</b> through diffing techniques.",
				'Launched web extension on Product Hunt ranking <b>#8 daily</b> with more than <b>1500</b> daily active users.'
			]
		},
		{
			title: 'betUFC',
			link: 'https://github.com/jazyz/UFCFightPredictor',
			duration: '(Dec 2023 - Jan 2024)',
			details: [
				'<b>Regularized data</b> and engineered features for <b>regression</b> algorithm with <b>LightGBM</b> and <b>Flask</b> to predict UFC fight outcomes.',
				'Fixed class imbalance that arose from a limited dataset, bringing results that differed by around <b>10%</b> to under <b>2%</b>, generating 20.3% ROI over 4 months, by modifying training data',
				"Optimized the model's <b>AWS</b> deployment, reducing timeouts by 30% by multithreading and adjusting worker counts."
			]
		},
		{
			title: 'Marble Investments',
			link: 'https://www.marbleinvestments.ca/',
			duration: '(Nov 2023 - Dec 2023)',
			details: [
				'Built full-stack web app with <b>Next.js, React, and MongoDB</b> for an investment club, handling transactions and newsletters.',
				'Processed membership fees using <b>Stripe API</b> and managed 2FA using React Email and Resend.'
			]
		},
		{
			title: 'Visual Sorting Algorithms',
			link: 'https://jiayishen21.github.io/sorting-algorithms/',
			duration: '(May 2023 - Aug 2023)',
			details: [
				'Animated comparisons and swaps of sorting algorithms through DOM manipulation, <b>React</b> hooks, and state variables.',
				"Manipulated promises to work around React's data binding with state variables to allow for timed animations."
			]
		}
	];

	let showDetails: boolean[] = Array(projects.length).fill(false);

	const toggleDetails = (index: number) => {
		showDetails[index] = !showDetails[index];
	};
</script>

<section id="projects">
	<h2>Projects</h2>
	<p class="disclaimer">
		Here are some of the most <span class="flashy-text">memorable</span> projects I've worked on. I will
		try to update this as I work on new things.
	</p>

	{#each projects as project, index}
		<h4>
			{#if project.link}
				<a href={project.link} target="_blank"> {project.title} </a>
			{:else}
				<span class="project-title"> {project.title} </span>
			{/if}
			<span class="duration">{project.duration}</span>
		</h4>
		<button on:click={() => toggleDetails(index)} class="toggle-details">
			{showDetails[index] ? 'Show less' : 'Show more'}
		</button>

		<div class={showDetails[index] ? 'details' : 'details hide-details'}>
			<ul>
				{#each project.details as detail}
					<li>
						{@html detail}
					</li>
				{/each}
			</ul>
		</div>
	{/each}
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

	.project-title {
		font-size: 1.9rem;
		font-weight: bold;
		font-family: var(--font-fancy);
		font-style: italic;
		transition: 0.5s ease-out;
	}
</style>
