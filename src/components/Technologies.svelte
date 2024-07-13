<script lang="ts">
	import searchIcon from '$lib/images/search.svg';
	// import technology icons
	import jsIcon from '$lib/images/technologies/javascript.svg';
	import tsIcon from '$lib/images/technologies/typescript.svg';
	import pythonIcon from '$lib/images/technologies/python.svg';
	import htmlIcon from '$lib/images/technologies/html.svg';
	import cssIcon from '$lib/images/technologies/css.svg';
	import cIcon from '$lib/images/technologies/c.svg';
	import cppIcon from '$lib/images/technologies/c++.svg';
	import javaIcon from '$lib/images/technologies/java.svg';
	import goIcon from '$lib/images/technologies/go.svg';
	import swiftIcon from '$lib/images/technologies/swift.svg';
	import sqlIcon from '$lib/images/technologies/sql.svg';
	import bashscriptIcon from '$lib/images/technologies/bashscript.svg';
	import reactIcon from '$lib/images/technologies/react.svg';
	import nodeIcon from '$lib/images/technologies/node.svg';
	import mongodbIcon from '$lib/images/technologies/mongodb.svg';
	import postgresIcon from '$lib/images/technologies/postgres.svg';
	import mysqlIcon from '$lib/images/technologies/mysql.svg';
	import expressIcon from '$lib/images/technologies/express.svg';
	import nextIcon from '$lib/images/technologies/next.svg';
	import angularIcon from '$lib/images/technologies/angular.svg';
	import svelteIcon from '$lib/images/technologies/svelte.svg';
	import expoIcon from '$lib/images/technologies/expo.svg';
	import reduxIcon from '$lib/images/technologies/redux.svg';
	import djangoIcon from '$lib/images/technologies/django.svg';
	import flaskIcon from '$lib/images/technologies/flask.svg';
	import jestIcon from '$lib/images/technologies/jest.svg';
	import tailwindIcon from '$lib/images/technologies/tailwind.svg';
	import microservicesIcon from '$lib/images/technologies/microservices.svg';
	import awsIcon from '$lib/images/technologies/aws.svg';
	import gcpIcon from '$lib/images/technologies/gcp.svg';
	import gitIcon from '$lib/images/technologies/git.svg';
	import dockerIcon from '$lib/images/technologies/docker.svg';
	import supabaseIcon from '$lib/images/technologies/supabase.svg';
	import firebaseIcon from '$lib/images/technologies/firebase.svg';
	import restIcon from '$lib/images/technologies/rest.svg';

	let search = '';

	type Technology = {
		name: string;
		keywords: string[];
		img?: string;
		priority?: number;
	};
	let technologies: Technology[] = [
		// languages
		{ name: 'JavaScript', keywords: ['js', 'java', 'script', 'language'], img: jsIcon },
		{
			name: 'TypeScript',
			keywords: ['ts', 'js', 'type', 'script', 'language'],
			img: tsIcon
		},
		{ name: 'Python', keywords: ['python', 'py', 'language'], priority: 1, img: pythonIcon },
		{ name: 'HTML', keywords: ['html', 'hyper', 'html5', 'language'], img: htmlIcon },
		{ name: 'CSS', keywords: ['css', 'cascading', 'style', 'sheets', 'language'], img: cssIcon },
		{ name: 'C', keywords: ['c', 'language'], img: cIcon },
		{ name: 'C++', keywords: ['c++', 'cpp', 'language'], priority: 1, img: cppIcon },
		{ name: 'Java', keywords: ['java', 'language'], img: javaIcon },
		{ name: 'Go', keywords: ['go', 'language'], priority: 1, img: goIcon },
		{ name: 'Swift', keywords: ['swift', 'mobile', 'ios', 'language'], img: swiftIcon },
		{
			name: 'SQL',
			keywords: ['sql', 'structured', 'query', 'language', 'language'],
			priority: 1,
			img: sqlIcon
		},
		{
			name: 'BashScript',
			keywords: ['bash', 'shell', 'script', 'language'],
			img: bashscriptIcon
		},

		// frameworks
		{
			name: 'React',
			keywords: ['react', 'js', 'java', 'script', 'frontend'],
			priority: 0,
			img: reactIcon
		},
		{ name: 'Node', keywords: ['node', 'js', 'java', 'script'], priority: 0, img: nodeIcon },
		{ name: 'MongoDB', keywords: ['mongo', 'db', 'database'], priority: 0, img: mongodbIcon },
		{
			name: 'Postgres',
			keywords: ['postgres', 'db', 'database', 'sql', 'structured', 'query', 'language'],
			priority: 0,
			img: postgresIcon
		},
		{
			name: 'MySQL',
			keywords: ['mysql', 'db', 'database', 'sql', 'structured', 'query', 'language'],
			img: mysqlIcon
		},
		{
			name: 'Express',
			keywords: ['express', 'js', 'java', 'script', 'backend'],
			priority: 0,
			img: expressIcon
		},
		{
			name: 'Next.js',
			keywords: ['next', 'react', 'js', 'java', 'script', 'frontend', 'backend'],
			priority: 0,
			img: nextIcon
		},
		{
			name: 'Angular',
			keywords: ['angular', 'js', 'java', 'script', 'frontend'],
			img: angularIcon
		},
		{
			name: 'Svelte',
			keywords: ['svelte', 'js', 'java', 'script', 'frontend'],
			img: svelteIcon
		},
		{
			name: 'React Native',
			keywords: ['react', 'native', 'js', 'java', 'script', 'frontend'],
			img: reactIcon
		},
		{
			name: 'Expo',
			keywords: ['exp', 'react', 'native', 'js', 'java', 'script', 'frontend'],
			img: expoIcon
		},
		{
			name: 'Redux',
			keywords: ['redux', 'thunk', 'react', 'library', 'js', 'java', 'script', 'frontend'],
			img: reduxIcon
		},
		{ name: 'Django', keywords: ['django', 'python', 'py', 'backend'], img: djangoIcon },
		{ name: 'Flask', keywords: ['flask', 'python', 'py', 'backend'], img: flaskIcon },
		{
			name: 'Jest',
			keywords: ['jest', 'test', 'ci/cd', 'cicd', 'ci cd', 'quality', 'assurance', 'devops'],
			img: jestIcon
		},
		{
			name: 'Tailwind',
			keywords: ['tailwind', 'css', 'cascading', 'style', 'sheets'],
			priority: 1,
			img: tailwindIcon
		},

		// skills
		{
			name: 'Microservices',
			keywords: ['microservices', 'architecture'],
			img: microservicesIcon
		},
		{
			name: 'AWS',
			keywords: ['aws', 'amazon', 'web', 'services', 'hosting', 'cloud', 'devops'],
			img: awsIcon
		},
		{ name: 'GCP', keywords: ['gcp', 'google', 'hosting', 'cloud', 'devops'], img: gcpIcon },
		{ name: 'Git', keywords: ['git', 'version'], img: gitIcon },
		{
			name: 'Docker',
			keywords: ['docker', 'container', 'hosting', 'cloud', 'devops'],
			img: dockerIcon
		},
		{
			name: 'Supabase',
			keywords: ['supabase', 'hosting', 'database', 'devops'],
			img: supabaseIcon
		},
		{ name: 'Firebase', keywords: ['firebase', 'hosting', 'cloud', 'devops'], img: firebaseIcon },
		{ name: 'REST', keywords: ['rest', 'api', 'architecture'], img: restIcon }
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
				<img src={tech.img} alt={tech.name} />
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
