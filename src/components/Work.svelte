<script lang="ts">
	const projectCount = 3;
	let showDetails: boolean[] = Array(projectCount).fill(false);

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

	<h4>
		<a href="https://www.slimescholars.com/" target="_blank">
			<b>SlimeScholars</b>
			<span>
				<span class="role-dash"> - </span>
				<span class="role"> Founding Engineer </span>
			</span>
		</a>
		<span class="duration"> (May 2024 - Aug 2024) </span>
	</h4>
	<button on:click={() => toggleDetails(0)} class="toggle-details">
		{showDetails[0] ? 'Show less' : 'Show more'}
	</button>

	<div class={showDetails[0] ? 'details' : 'details hide-details'}>
		<ul>
			<li>
				Led backend development of a gamified education platform built with
				<b>Next.js, React, MongoDB, and AWS,</b> accumulating over <b>10,000</b>
				monthly users.
			</li>
			<li>
				Created <b>parser</b> for custom markdown for educational content, using
				<b>google analytics</b> + in-house system to track student engagement on lessons and quizzes.
			</li>
			<li>
				Managed a team of 5 engineers, ensuring robust and efficient code with <b>Jest</b>
				and <b>benchmarking</b>.
			</li>
			<li>
				Slashed storage needs by <b>30%</b> by optimizing Mongoose models,
				<b>MongoDB aggregate pipelines</b> and <b>S3</b> as an object store.
			</li>
			<li>
				Developed real-time matchmaking algorithm to gamify learning through competitions, using
				cron and aggregate queries to match teams of students of similar sizes and skill.
			</li>
		</ul>
	</div>

	<h4>
		<a href="https://www.retrospect.space/" target="_blank">
			<b>Retrospect (Tenacity Labs)</b>
			<span>
				<span class="role-dash"> - </span>
				<span class="role"> Backend Developer </span>
			</span>
		</a>
		<span class="duration">(Mar 2024 - April 2024)</span>
	</h4>
	<button on:click={() => toggleDetails(1)} class="toggle-details">
		{showDetails[1] ? 'Show less' : 'Show more'}
	</button>

	<div class={showDetails[1] ? 'details' : 'details hide-details'}>
		<ul>
			<li>
				Built an app to track memorable experiences with <b>RESTful Go stdlib</b> backend, using
				<b>Gorilla Mux</b> for routing, <b>MySQL</b> and <b>Google Cloud Buckets</b> as an object store
				and CDN.
			</li>
			<li>
				Configured <b>crontab</b> and <b>SendGrid</b> on Google Cloud infrastructure to automate email
				notifications.
			</li>
			<li>
				Designed a <b>social recommendation algorithm</b> using a <b>social graph</b> to build an effective
				referral program.
			</li>
		</ul>
	</div>

	<h4>
		<a href="https://unfollowed.lol/" target="_blank">
			<b>unfollowed.lol (Tenacity Labs)</b>
			<span>
				<span class="role-dash"> - </span>
				<span class="role"> Software Engineer </span>
			</span>
		</a>
		<span class="duration">(Feb 2024 - Mar 2024)</span>
	</h4>
	<button on:click={() => toggleDetails(2)} class="toggle-details">
		{showDetails[2] ? 'Show less' : 'Show more'}
	</button>

	<div class={showDetails[2] ? 'details' : 'details hide-details'}>
		<ul>
			<li>
				Built <b>JavaScript</b> browser extension that leverages Instagram’s internal client-side APIs
				to comply with server-side rate limits.
			</li>
			<li>
				Streamlined <b>Postgres</b> queries using Django’s ORM, also cutting data redundancy by
				<b>80%</b> through diffing techniques.
			</li>
			<li>
				Launched web extension on Product Hunt ranking <b>#8 daily</b> with more than <b>1500</b> daily
				active users.
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
