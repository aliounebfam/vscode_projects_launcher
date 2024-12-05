## 🌍 Languages
- Français (Version actuelle)
- [English version](README_EN.md)

# 🤖 VSCode Projects Launcher

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🎯 Le pourquoi ?

Tout est parti d'un constat simple : quand je travaille sur des projets avec des architectures un peu complexes faisant intervenir plusieurs frameworks, lancer tout dans un seul VSCode peut vite devenir un cauchemar 😬.

Entre les différentes technologies, les contraintes d'architecture, et le besoin de garder une vue claire sur chaque partie, il m'est arrivé dès fois où je devais ouvrir au moins 3 instances VSCode différentes à chaque fois j'allumais mon PC...

*Pour les développeurs qui n'éteignent jamais leur ordinateur, vous ne pourrez pas comprendre ma douleur...* 😒

Fatigué de cette routine quotidienne d'ouverture manuelle de projets, j'ai créé ces petits scripts pour faciliter tout ça et je partage cela avec vous ☺️.

## 📖 Fonctionnement

Actuellement, l'outil est volontairement minimaliste. Vous vous placez sous un répertoire ou bien vous donnez un chemin vers un répertoire et il lance pour chaque sous répertoire contenant `.git`, une instance de VSCode.

*Vous pensez qu'il faudrait rajouter d'autres prérequis ? Les PR sont ouvertes ! Si c'est pertinent, je suis preneur.* 😉

## ⚡ Prérequis

Visual Studio Code doit être installé et accessible via la commande `code`.

## 💻 Usage

### Installation

Récupérez le script correspondant à votre plateforme dans scripts, et personnalisez-le selon vos besoins.

*Pro tip : Renommez-le comme vous voulez ! Moi je l'ai appelé `mcode` comme `multiple vscode` mais en plus court* 😁

### Windows

```bash

# Trois façons de l'utiliser :

mcode        # Répertoire courant

mcode .      # Pareil, mais avec style 😁

mcode C:\mon-dossier-cool  # Pour un répertoire spécifique

```

💡 Astuce Windows : Pour utiliser la commande depuis n'importe où, ajoutez le chemin du script dans vos variables d'environnement :

1. Ouvrez les "Variables d'environnement système"

2. Modifiez la variable "Path"

3. Ajoutez le chemin vers le dossier contenant le script

4. Redémarrez votre terminal

Et voilà, vous pouvez maintenant lancer vos projets aussi facilement !

### macOS / Linux

```bash
# Même logique qu'avec Windows :

./mcode.sh

````

## 🎥 Démonstration sous Windows

[Vidéo démonstration à venir]

## 🚀 Petite astuce pour gagner en productivité

### Utilisation de `tasks.json`

Si vous devez lancer plusieurs commandes au démarrage de votre projet, vous pouvez configurer un fichier `tasks.json` à la racine de votre projet VSCode dans un répertoire `.vscode`. 
Cela permet d'automatiser l'exécution de vos commandes.

Voici un exemple de fichier `tasks.json` :

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run npm dev",
            "type": "shell",
            "command": "npm run dev",
            "runOptions": {
                "runOn": "folderOpen"
            },
            "presentation": {
                "panel": "dedicated"
            }
        },
        {
            "label": "PHP Server",
            "type": "shell",
            "command": "php artisan serve",
            "runOptions": {
                "runOn": "folderOpen"
            },
            "presentation": {
                "panel": "dedicated"
            }
        },
        {
            "label": "Queue Worker",
            "type": "shell",
            "command": "php artisan queue:work",
            "runOptions": {
                "runOn": "folderOpen"
            },
            "presentation": {
                "panel": "dedicated"
            }
        },
        {
            "label": "new term",
            "type": "shell",
            "command": "${command:workbench.action.terminal.new}",
            "runOptions": {
                "runOn": "folderOpen"
            },
            "presentation": {
                "reveal": "always",
                "panel": "dedicated",
                "focus": true,
                "clear": true
            }
        },
    ]
}
```
Avec ce fichier et ces différentes configurations, dès que vous ouvrez votre dossier dans VSCode, les commandes spécifiées seront exécutées automatiquement, de quoi se simplifier d'avantage la vie 😁. 

Pour plus d'informations ➡️ [Custom Tasks VSCode](https://code.visualstudio.com/docs/editor/tasks#_custom-tasks).

## 🤝 Contribution

Les contributions sont les bienvenues ! Voici comment participer :

1. 🍴 Forkez le projet

2. 🔧 Créez votre branche (`git checkout -b feature/AmazingFeature`)

3. 💾 Committez vos changements (`git commit -m 'Add: Amazing Feature'`)

4. 📤 Pushez vers la branche (`git push origin feature/AmazingFeature`)

5. 📫 Ouvrez une Pull Request

## 📜 Licence

Ce projet est sous licence MIT - voir le fichier [LICENSE.md](LICENSE) pour plus de détails.

## ❤️ Support

Si vous trouvez ce projet utile, pensez à lui mettre une ⭐️ sur GitHub ! 

Des questions ? Ouvrez une issue ou rejoignez les discussions. Je ne mord pas, promis ☺️ ! 
