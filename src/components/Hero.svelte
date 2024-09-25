<script>
	import gitHubIcon from '$lib/images/github.svg';
	import linkedInIcon from '$lib/images/linkedin.svg';
	import emailIcon from '$lib/images/email.svg';
	import resumeIcon from '$lib/images/resume.svg';
</script>

<section id="home">
	<h1>
		Hey, I'm Lucas <br />
		<span class="flashy-text">Fullstack Developer </span>
	</h1>

	<ul class="contact">
		<li>
			<a href="https://github.com/jiayishen21" target="_blank">
				<div class="icon-wrapper">
					<img src={gitHubIcon} alt="github" />
				</div>
				GitHub
			</a>
		</li>
		<li>
			<a href="https://www.linkedin.com/in/lucas-shen/" target="_blank">
				<div class="icon-wrapper">
					<img src={linkedInIcon} alt="linkedin" />
				</div>
				LinkedIn
			</a>
		</li>
		<li>
			<a href="mailto:lucasshen21@gmail.com">
				<div class="icon-wrapper">
					<img src={emailIcon} alt="email" />
				</div>
				Email
			</a>
		</li>
		<li>
			<a
				href="https://docs.google.com/document/d/17sOBr9dSJZmPIPhPYfO4nyDA012DeXvQe4SAf92Ol48/edit?usp=sharing"
				target="_blank"
			>
				<div class="icon-wrapper">
					<img src={resumeIcon} alt="resume" />
				</div>
				Resume
			</a>
		</li>
	</ul>

	<p class="about-me">
		Hi, I'm Lucas, a fullstack developer currently studying
		<b>Computer Science</b>
		at the
		<b>University of Waterloo.</b>
		I'm currently working at
		<a href="https://www.slimescholars.com/" target="_blank">SlimeScholars</a>
		as a Founding Engineer.
	</p>
</section>

<style>
	section {
		margin: 2rem 0;
	}

	h1 {
		padding-top: 8rem;
		font-size: 3.5rem;
		color: var(--color-white-0);
		margin-bottom: 1rem;
		font-family: var(--font-heading);
	}

	.about-me {
		font-size: 1.3rem;
		line-height: 2.3rem;
		color: var(--color-black-2);
		font-family: var(--font-heading);
	}

	.about-me a {
		color: var(--color-white-0);
		font-weight: bold;
		font-style: italic;
		font-family: var(--font-fancy);
		margin: 0 0.3rem;
		font-size: 1.4rem;
		transition: 0.5s ease-out;
	}

	.about-me a:hover {
		color: var(--color-black-2);
	}

	.contact {
		margin-top: 2rem;
		margin-bottom: 2rem;
	}

	.contact li {
		display: inline-block;
		margin-bottom: 1rem;
	}

	.contact li a {
		background: var(--color-black-1);
		color: var(--color-white-0);
		padding: 0.8rem 1.5rem;
		margin-right: 1rem;
		border-radius: 100000px;
		transition: 0.3s ease-out;
		display: flex;
		align-items: center;
		transform: scale(1);
	}

	.contact li a:hover {
		background: var(--color-black-3);
		transform: scale(1.05);
	}

	.icon-wrapper {
		position: relative;
		display: inline-block;
		width: 1.8rem;
		height: 1.8rem;
		margin-right: 0.5rem;
	}

	.icon-wrapper img {
		position: absolute;
	}

	@media (max-width: 1000px) {
		h1 {
			font-size: 2.5rem;
		}

		.about-me {
			font-size: 1.25rem;
			line-height: 2.2rem;
		}

		.contact {
			margin-top: 1.5rem;
			margin-bottom: 1.5rem;
		}

		.contact li {
			margin-bottom: 0.8rem;
		}

		.contact li a {
			padding: 0.6rem 1.2rem;
			margin-right: 0.7rem;
		}

		.icon-wrapper {
			width: 1.5rem;
			height: 1.5rem;
			margin-right: 0.4rem;
		}
	}
</style>
