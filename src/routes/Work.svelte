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
				<span class="role"> Software Engineer Intern </span>
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
				Developed a full-stack web app using <b>MongoDB, Next.js, React</b> to create a platform that
				revolutionizes education by binding learning with addictive practices found in games.
			</li>
			<li>
				Created <b>parser</b> for custom markdown geared towards educational content, also handling data
				analytics of student performance on quiz questions.
			</li>
			<li>
				Optimized database storage needs by building scalable <b>Mongoose models</b> and configuring
				<b>S3</b> for image storage, <b>reducing storage requirements by over 30%.</b>
			</li>
			<li>
				Deployed web app using <b>Amazon Elastic Beanstalks</b> to manage <b>loading balancing</b>
				for
				<b>EC2 instances,</b>
				<b>GitHub actions</b> for building and bundling, and <b>Jest</b> for unit testing.
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
				<b>RESTful Go stdlib + Gorilla Mux</b> backend, <b>MySQL</b> and <b>Google Cloud buckets</b>
				for storage. Used <b>crontab </b> and <b>SendGrid</b> to handle mail notifications.
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
				Built web <b>browser extension</b> using vanilla JavaScript that uses
				<b>Instagram's internal API</b>
				on the client side to fetch user data <b>without being rate limited.</b>
			</li>
			<li>
				Designed Postgres database schemas, using <b>memoization</b> techniques to reduce storage needs
				by 80%.
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
