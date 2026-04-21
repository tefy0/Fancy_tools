
# fancy_tools

Scripts Shell pour automatiser la configuration d'un environnement Git.

## Prérequis
- Linux / macOS
- git et bash installés
- Un compte GitHub

## Installation

Cloner le dépôt et lancer le script :

    git clone https://github.com/tefy0/Fancy_tools.git
    cd Fancy_tools
    bash install.sh
    source ~/.bashrc

## Utilisation

### Alias disponibles

| Alias | Commande équivalente |
|-------|----------------------|
| gss   | git status           |
| gpl   | git pull             |
| gpu   | git push             |
| gap   | git add .            |

### Fonction gco

Effectue un commit en ajoutant automatiquement le nom de la branche :

    gco 'mon message'
    # résultat : git commit -m '[dev] mon message'

### updateFancyTools

Met à jour les outils depuis la branche main de GitHub :

    updateFancyTools

## Structure du projet

    fancy_tools/
    ├── .aliases               # Alias Git
    ├── fancy_functions.sh     # Fonction gco
    ├── install.sh             # Script d'installation
    ├── README.md              # Documentation
    └── bin/
        └── updateFancyTools   # Script de mise à jour
