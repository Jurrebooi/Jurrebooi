

name: CI kristallenkracht.nl

<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crystal Essence - De Magie van Kristallen</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Welkom bij Crystal Essence</h1>
        <p>Ontdek de kracht van kristallen en hun helende energieën.</p>
    </header>

    <!-- Home Section -->
    <section class="home">
        <h2>Wat zijn Kristallen?</h2>
        <p>Kristallen zijn natuurlijke mineralen die al duizenden jaren door mensen worden gewaardeerd vanwege hun esthetische en energetische eigenschappen. Ze kunnen helpen bij het bevorderen van harmonie, het verbeteren van je welzijn, en het verhogen van je energie.</p>
        <button><a href="#gids">Bekijk onze Kristallen Gids</a></button>
    </section>

    <!-- Kristallen Gids -->
    <section id="gids" class="gids">
        <h2>Kristallen Gids</h2>
        <div class="kristal">
            <h3>Amethist</h3>
            <p>Amethist is een krachtige steen die kalmeert, stress vermindert en helpt bij meditatie.</p>
        </div>
        <div class="kristal">
            <h3>Rozenkwarts</h3>
            <p>Rozenkwarts is de steen van liefde, die helpt bij het bevorderen van zelfliefde en relaties.</p>
        </div>
        <div class="kristal">
            <h3>Bergkristal</h3>
            <p>Bergkristal wordt gebruikt voor helderheid, balans, en het versterken van de energie van andere kristallen.</p>
        </div>
    </section>

    <!-- Contactpagina -->
    <section class="contact">
        <h2>Neem Contact op</h2>
        <form action="#" method="POST">
            <label for="name">Naam:</label>
            <input type="text" id="name" name="name" required>
            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email" required>
            <label for="message">Bericht:</label>
            <textarea id="message" name="message" rows="4" required></textarea>
            <button type="submit">Verstuur</button>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Crystal Essence</p>
    </footer>
</body>
</html>
# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v4

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          echo Add other actions to build,
          echo test, and deploy your project.
