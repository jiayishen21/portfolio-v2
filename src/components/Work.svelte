<script lang="ts">
	const workExperiences = [
		{
			company: 'Wispr Flow',
			link: 'https://wisprflow.ai/',
			role: 'Software Engineer',
			duration: '(Jan 2025 - Present)',
			details: [
				'Increased dictation accuracy through context awareness by extracting relevant text with native subprocesses (<b>Swift and C#</b>)',
				'Improved automatic speech recognition (ASR) and formatting models by collecting and classifying data on text-editing patterns across users, using string matching algorithms for plaintext, HTML, and markdown.',
				'Decreasing <b>crash rate from 6% to 2%</b> by building an internal devtool for observability, improving logging through stack traces, killing orphaned processes, reinforcing the CI/CD pipeline, and working with customers to identify pain points.',
				'Documented complex logic and processes, also wrote scripts to simplify processes like migrations, testing, and the release pipeline.',
				'Generated monthly and yearly roundups, catalyzing a month of <b>20% WAU growth</b>, by aggregating user data with <b>SQL</b>, templating emails with Jinja, and creating shareable OpenGraph metadata with <b>Next.js</b>.'
			]
		},
		{
			company: 'SlimeScholars',
			link: 'https://www.slimescholars.com/',
			role: 'Founding Engineer',
			duration: '(May 2024 - Aug 2024)',
			details: [
				'Led backend development of a gamified education platform built with <b>Next.js, React, MongoDB, and AWS</b>.',
				'Created <b>parser</b> for custom markdown for educational content, using <b>google analytics</b> + in-house system to track student engagement on lessons and quizzes.',
				'Managed a team of 5 engineers, ensuring robust and efficient code with <b>Jest</b> and <b>benchmarking</b>.',
				'Slashed storage needs by <b>30%</b> by optimizing Mongoose models, <b>MongoDB aggregate pipelines</b> and <b>S3</b> as an object store.',
				'Developed real-time matchmaking algorithm to gamify learning through competitions, using cron and aggregate queries to match teams of students of similar sizes and skill.'
			]
		}
	];

	let showDetails: boolean[] = Array(workExperiences.length).fill(false);

	const toggleDetails = (index: number) => {
		showDetails[index] = !showDetails[index];
	};
</script>

<section id="work">
	<h2>Work</h2>
	<p class="disclaimer">
		Here are my most <span class="flashy-text">relevant</span> work experiences. I will try to keep this
		updated.
	</p>

	{#each workExperiences as experience, index}
		<h4>
			<a href={experience.link} target="_blank">
				<b>{experience.company}</b>
				<span>
					<span class="role-dash"> - </span>
					<span class="role"> {experience.role} </span>
				</span>
			</a>
			<span class="duration"> {experience.duration} </span>
		</h4>
		<button on:click={() => toggleDetails(index)} class="toggle-details">
			{showDetails[index] ? 'Show less' : 'Show more'}
		</button>

		<div class={showDetails[index] ? 'details' : 'details hide-details'}>
			<ul>
				{#each experience.details as detail}
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

	h4 a b {
		font-size: 1.9rem;
		font-weight: bold;
		font-family: var(--font-fancy);
		font-style: italic;
	}

	h4 a,
	h4 a b,
	h4 a span {
		transition: 0.5s ease-out;
	}

	h4 a:hover,
	h4 a:hover b,
	h4 a:hover span {
		color: var(--color-black-2);
	}

	@media (max-width: 1350px) {
		.role-dash {
			display: none;
		}

		.role {
			display: block;
		}

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

		h4 a b {
			font-size: 1.7rem;
		}

		.role {
			font-size: 1.4rem;
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
