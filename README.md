# Pomme, Poire et Ananas

Une application Flutter simple pour démontrer l'utilisation de widgets, la gestion de l'état, l'utilisation d'assets et l'affichage conditionnel. L'application permet aux utilisateurs d'incrémenter un compteur et d'afficher des items avec des conditions de style et de contenu spécifiques.

## Objectifs

- Prise en main de Flutter.
- Découverte de la mise en page à l'aide de widgets.
- Gestion des interactions de l'utilisateur.
- Gestion de l'état applicatif (Stateless / Stateful).
- Emploi d'assets.
- Construction de liste dynamique.
- Affichage conditionnel.

## Fonctionnalités

- Incrémenter un compteur avec un bouton flottant.
- Afficher une liste d'items basée sur le compteur.
- Appliquer des styles et des images conditionnels aux items de la liste.
- Afficher des boîtes de dialogue avec des informations sur les items cliqués.
- Supprimer des items de la liste via la boîte de dialogue.

## Structure du projet

Le projet est organisé de manière modulaire pour améliorer la maintenabilité et la lisibilité du code. Voici un aperçu de la structure des fichiers :

```
lib/
│
├── main.dart
├── my_app.dart
├── my_home_page.dart
├── my_home_page_state.dart
└── utils/
├── prime_utils.dart
├── color_utils.dart
└── image_utils.dart
```

## Configuration

### Prérequis

- Flutter SDK: [Installation guide](https://flutter.dev/docs/get-started/install)
- Un éditeur de code (par exemple, Visual Studio Code ou Android Studio)

### Installation

1. Clonez ce dépôt sur votre machine locale :

```sh
git clone https://github.com/Ishak-rav/flutter_pomme_poire_ananas.git
cd pomme-poire-ananas
```

2. Installez les dépendances :

```sh
flutter pub get
```

3. Assurez-vous que les images suivantes sont présentes dans le répertoire assets/images :

- `poire.png`
- `pomme.png`
- `ananas.png`

4. Assurez-vous que le fichier pubspec.yaml est correctement configuré pour inclure les assets :

```yaml
flutter:
  assets:
    - assets/images/
```

## Lancer l'application

Pour lancer l'application sur un simulateur ou un appareil physique :

```sh
flutter run
```

## Explications des fichiers

### main.dart

Le point d'entrée de l'application. Il appelle runApp pour lancer l'application Flutter.

### my_app.dart

Contient la définition du widget MyApp qui configure l'application et définit le thème global.

### my_home_page.dart

Contient la définition du widget MyHomePage qui est un StatefulWidget et délègue la gestion de l'état à MyHomePageState.

### my_home_page_state.dart

Contient la logique de gestion de l'état pour MyHomePage. Gère le compteur, la liste des items, et les interactions avec l'utilisateur.

### utils/prime_utils.dart

Fonctions utilitaires pour vérifier si un nombre est premier et déterminer le type de nombre (premier, pair, impair).

### utils/color_utils.dart

Fonctions utilitaires pour déterminer la couleur de fond en fonction du nombre.

### utils/image_utils.dart

Fonctions utilitaires pour déterminer l'image à afficher en fonction du nombre.
