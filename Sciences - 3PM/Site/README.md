# Site des séances — Physique-Chimie · 3ᵉ Prépa-Métiers

Site complet pour les **10 modules** (30 séances) du programme de cycle 4.
Les élèves naviguent : **accueil → un module → télécharger la fiche Word** d’une séance.
Le contenu des cours vit **uniquement dans les fichiers `.docx`** : tu les mets à jour sans toucher au code.

## Arborescence
```
index.html              ← page d'accueil (les 10 modules, regroupés par thème)
module-1.html … module-10.html   ← une page par module (ses 3 séances + boutons)
seances/
  module-01/  seance-1.docx  seance-2.docx  seance-3.docx
  module-02/  …
  …
  module-10/  …
README.md
```

## État du contenu
- **Module 1** : les 3 fiches sont **déjà rédigées** (cours, expérience, exercices, défi).
- **Modules 2 à 10** : fiches **vierges mais structurées** — chaque fiche contient déjà son titre, l’encadré « Objectif » et les sections *Le cours / L’expérience / À toi de jouer / Défi facultatif*, avec des « À compléter ». Tu n’as plus qu’à remplir.

Les **titres de séances** sont des propositions cohérentes avec le programme ; tu peux les changer (voir plus bas).

## Mettre en ligne (une fois)
1. Crée un dépôt GitHub et dépose **tout le contenu** de ce dossier à la racine (`index.html` à la racine, `seances/` à côté).
2. **Settings → Pages** → *Source* : « Deploy from a branch », branche `main`, dossier `/ (root)`.
3. GitHub te donne l’adresse du site (`https://ton-pseudo.github.io/ton-depot/`) à partager aux élèves.

## Mettre à jour une fiche (le cas courant)
1. Édite la fiche dans Word.
2. Dans le dépôt, **remplace** le fichier par le nouveau **en gardant le même chemin et le même nom** (ex. `seances/module-04/seance-2.docx`).
3. Commit. Le site sert la nouvelle version : **aucune ligne de code à modifier.**

## Changer le titre ou la description d’une séance
Ouvre la page du module concerné (ex. `module-4.html`) et modifie le texte dans le bloc `<h3>` (titre) ou `<p>` (description) de la carte. Le lien de téléchargement, lui, ne bouge pas.

## Ajouter / retirer une séance
- **Ajouter** : dépose le `.docx` dans le bon dossier `seances/module-0N/`, puis copie un bloc `<li class="card"> … </li>` dans la page du module et ajuste le numéro, le titre et le `href`.
- **Retirer** : supprime le bloc `<li>` correspondant (et le `.docx` si tu veux).

## Notes
- Les fiches s’ouvrent dans Word, LibreOffice ou Google Docs.
- Le site est responsive (mobile) et respecte les préférences « animations réduites ».
- Les polices viennent de Google Fonts ; sans connexion, une police système prend le relais.
- Le style et l’animation sont intégrés dans chaque page (pas de fichier CSS externe) : tu n’as jamais besoin d’y toucher pour gérer le contenu.
