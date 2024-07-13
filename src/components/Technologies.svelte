<script lang="ts">
	import searchIcon from '$lib/images/search.svg';
	let search = '';

	type Technology = {
		name: string;
		keywords: string[];
		img?: string;
		priority?: number;
	};
	let technologies: Technology[] = [
		// languages
		{ name: 'JavaScript', keywords: ['js', 'java', 'script', 'language'], img: 'javascript.svg' },
		{
			name: 'TypeScript',
			keywords: ['ts', 'js', 'type', 'script', 'language'],
			img: 'typescript.svg'
		},
		{ name: 'Python', keywords: ['python', 'py', 'language'], priority: 1, img: 'python.svg' },
		{ name: 'HTML', keywords: ['html', 'hyper', 'html5', 'language'], img: 'html.svg' },
		{ name: 'CSS', keywords: ['css', 'cascading', 'style', 'sheets', 'language'], img: 'css.svg' },
		{ name: 'C', keywords: ['c', 'language'], img: 'c.svg' },
		{ name: 'C++', keywords: ['c++', 'cpp', 'language'], priority: 1, img: 'c++.svg' },
		{ name: 'Java', keywords: ['java', 'language'], img: 'java.svg' },
		{ name: 'Go', keywords: ['go', 'language'], priority: 1, img: 'go.svg' },
		{ name: 'Swift', keywords: ['swift', 'mobile', 'ios', 'language'], img: 'swift.svg' },
		{
			name: 'SQL',
			keywords: ['sql', 'structured', 'query', 'language', 'language'],
			priority: 1,
			img: 'sql.svg'
		},
		{
			name: 'BashScript',
			keywords: ['bash', 'shell', 'script', 'language'],
			img: 'bashscript.svg'
		},

		// frameworks
		{
			name: 'React',
			keywords: ['react', 'js', 'java', 'script', 'frontend'],
			priority: 0,
			img: 'react.svg'
		},
		{ name: 'Node', keywords: ['node', 'js', 'java', 'script'], priority: 0, img: 'node.svg' },
		{ name: 'MongoDB', keywords: ['mongo', 'db', 'database'], priority: 0, img: 'mongodb.svg' },
		{
			name: 'Postgres',
			keywords: ['postgres', 'db', 'database', 'sql', 'structured', 'query', 'language'],
			priority: 0,
			img: 'postgres.svg'
		},
		{
			name: 'MySQL',
			keywords: ['mysql', 'db', 'database', 'sql', 'structured', 'query', 'language'],
			img: 'mysql.svg'
		},
		{
			name: 'Express',
			keywords: ['express', 'js', 'java', 'script', 'backend'],
			priority: 0,
			img: 'express.svg'
		},
		{
			name: 'Next.js',
			keywords: ['next', 'react', 'js', 'java', 'script', 'frontend', 'backend'],
			priority: 0,
			img: 'next.svg'
		},
		{
			name: 'Angular',
			keywords: ['angular', 'js', 'java', 'script', 'frontend'],
			img: 'angular.svg'
		},
		{
			name: 'Svelte',
			keywords: ['svelte', 'js', 'java', 'script', 'frontend'],
			img: 'svelte.svg'
		},
		{
			name: 'React Native',
			keywords: ['react', 'native', 'js', 'java', 'script', 'frontend'],
			img: 'react.svg'
		},
		{
			name: 'Expo',
			keywords: ['exp', 'react', 'native', 'js', 'java', 'script', 'frontend'],
			img: 'expo.svg'
		},
		{
			name: 'Redux',
			keywords: ['redux', 'thunk', 'react', 'library', 'js', 'java', 'script', 'frontend'],
			img: 'redux.svg'
		},
		{ name: 'Django', keywords: ['django', 'python', 'py', 'backend'], img: 'django.svg' },
		{ name: 'Flask', keywords: ['flask', 'python', 'py', 'backend'], img: 'flask.svg' },
		{
			name: 'Jest',
			keywords: ['jest', 'test', 'ci/cd', 'cicd', 'ci cd', 'quality', 'assurance', 'devops'],
			img: 'jest.svg'
		},
		{
			name: 'Tailwind',
			keywords: ['tailwind', 'css', 'cascading', 'style', 'sheets'],
			priority: 1,
			img: 'tailwind.svg'
		},

		// skills
		{
			name: 'Microservices',
			keywords: ['microservices', 'architecture'],
			img: 'microservices.svg'
		},
		{
			name: 'AWS',
			keywords: ['aws', 'amazon', 'web', 'services', 'hosting', 'cloud', 'devops'],
			img: 'aws.svg'
		},
		{ name: 'GCP', keywords: ['gcp', 'google', 'hosting', 'cloud', 'devops'], img: 'gcp.svg' },
		{ name: 'Git', keywords: ['git', 'version'], img: 'git.svg' },
		{
			name: 'Docker',
			keywords: ['docker', 'container', 'hosting', 'cloud', 'devops'],
			img: 'docker.svg'
		},
		{
			name: 'Supabase',
			keywords: ['supabase', 'hosting', 'database', 'devops'],
			img: 'supabase.svg'
		},
		{ name: 'Firebase', keywords: ['firebase', 'hosting', 'cloud', 'devops'], img: 'firebase.svg' },
		{ name: 'REST', keywords: ['rest', 'api', 'architecture'], img: 'rest.svg' }
	];

	$: filteredTechnologies = (() => {
		let result: Technology[];
		// sort by priority if no search
		if (search.trim() === '') {
			result = technologies.slice().sort((a, b) => {
				if (b.priority === undefined) return -1;
				if (a.priority === undefined) return 1;
				if (a.priority === b.priority) return -1;
				return a.priority - b.priority;
			});
		} else {
			result = technologies
				.filter(
					(tech) =>
						tech.name.toLowerCase().includes(search.toLowerCase()) ||
						tech.keywords.some((keyword) => keyword.toLowerCase().includes(search.toLowerCase()))
				)
				.sort((a, b) => {
					const aMatch = a.keywords[0].toLowerCase().includes(search.toLowerCase());
					const bMatch = b.keywords[0].toLowerCase().includes(search.toLowerCase());
					if (aMatch && !bMatch) return -1;
					if (!aMatch && bMatch) return 1;
					return 0;
				});
		}
		return result;
	})();
</script>

<section id="tech">
	<h2>Technologies</h2>
	<div class="searchbar">
		<div class="search-icon-wrapper">
			<img src={searchIcon} alt="search" />
		</div>
		<input type="text" placeholder="Search for keywords, eg. backend" bind:value={search} />
	</div>

	<ul>
		{#each filteredTechnologies as tech}
			<li>
				<img src={`/src/lib/images/technologies/${tech.img || 'javascript.svg'}`} alt={tech.name} />
				{tech.name}
			</li>
		{/each}
	</ul>
</section>

<style>
	section {
		margin: 2rem 0;
		padding-top: 4rem;
		border-top: 3px solid var(--color-black-3);
	}

	h2 {
		font-size: 2.5rem;
		margin-bottom: 1rem;
		font-family: var(--font-heading);
	}

	.searchbar {
		background: var(--color-black-1);
		padding: 0.9rem 1.8rem;
		border-radius: 1000px;
		max-width: 35rem;
		width: 100%;
		margin-bottom: 2rem;
		font-size: 1.1rem;
	}

	.search-icon-wrapper {
		position: relative;
		display: inline-block;
		width: 1.4rem;
		height: 1rem;
		margin-right: 0.8rem;
	}

	.search-icon-wrapper img {
		position: absolute;
		top: 0rem;
		width: 1.2rem;
		height: 1.2rem;
	}

	input {
		background: none;
		border: none;
		font-size: inherit;
		width: calc(100% - 3rem);
	}

	input:focus {
		outline: none;
	}

	ul {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr;
		column-gap: 1.5rem;
		row-gap: 1rem;
		background-color: var(--color-black-3);
		border-radius: 8px;
		padding: 2rem;
		height: 30rem;
		overflow: auto;
		align-content: start;
	}

	li {
		display: flex;
		align-items: center;
		flex-direction: column;
		background-color: var(--color-black-1);
		border-radius: 8px;
		padding: 2rem 0;
		height: fit-content;
		font-family: var(--font-heading);
	}

	li img {
		width: 2.5rem;
		height: auto;
		object-fit: contain;
		margin-bottom: 0.5rem;
	}

	@media (max-width: 1150px) {
		ul {
			grid-template-columns: 1fr 1fr 1fr;
		}
	}

	@media (max-width: 1000px) {
		h2 {
			font-size: 2rem;
		}
	}

	@media (max-width: 800px) {
		ul {
			grid-template-columns: 1fr 1fr;
		}
	}

	@media (max-width: 600px) {
		ul {
			grid-template-columns: 1fr;
		}
	}
</style>
