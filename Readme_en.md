# 🤖 VSCode Projects Launcher

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🎯 Why?

It all started with a simple observation: when working on projects with complex architectures involving multiple frameworks, launching everything in a single VSCode instance can quickly become a nightmare 😬.

Between different technologies, architectural constraints, and the need to maintain a clear view of each component, I found myself in situations where I had to open at least 3 different VSCode instances every time I turned on my PC...

*For developers who never shut down their computers, you may not understand my pain...* 😒

Tired of this daily routine of manually opening projects, I created these simple scripts to make it easier and I'm sharing them with you ☺️.

## 📖 How it Works

Currently, the tool is intentionally minimalistic. You navigate to a directory or provide a path to a directory, and it launches a VSCode instance for each subdirectory containing `.git`.

*Think we should add other prerequisites? PRs are open! If it's relevant, I'm all ears.* 😉

## ⚡ Prerequisites

Visual Studio Code must be installed and accessible via the `code` command.

## 💻 Usage

### Installation

Get the script corresponding to your platform from the scripts folder and customize it according to your needs.

*Pro tip: Name it whatever you want! I called mine `mcode` for "multiple vscode" but shorter* 😁

### Windows

```bash
# Three ways to use it:

mcode        # Current directory

mcode .      # Same thing, but with style 😁

mcode C:\my-cool-folder  # For a specific directory
```

💡 Windows Tip: To use the command from anywhere, add the script path to your environment variables:

1. Open "System Environment Variables"
2. Edit the "Path" variable
3. Add the path to the folder containing the script
4. Restart your terminal

And there you have it, you can now launch your projects just as easily!

### macOS / Linux

```bash
# Same logic as Windows:

./mcode.sh
```

## 🎥 Windows Demonstration

[Demo video coming soon]

## 🚀 Productivity Tip

### Using `tasks.json`

If you need to run multiple commands when starting your project, you can configure a `tasks.json` file in the `.vscode` directory at the root of your VSCode project. 
This allows you to automate the execution of your commands.

Here's an example of a `tasks.json` file:

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
        }
    ]
}
```
With this file and these configurations, as soon as you open your folder in VSCode, the specified commands will be executed automatically, making life even easier 😁.

For more information ➡️ [Custom Tasks VSCode](https://code.visualstudio.com/docs/editor/tasks#_custom-tasks).

## 🤝 Contributing

Contributions are welcome! Here's how to participate:

1. 🍴 Fork the project
2. 🔧 Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. 💾 Commit your changes (`git commit -m 'Add: Amazing Feature'`)
4. 📤 Push to the branch (`git push origin feature/AmazingFeature`)
5. 📫 Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.

## ❤️ Support

If you find this project useful, consider giving it a ⭐️ on GitHub!

Questions? Open an issue or join the discussions. I don't bite, promise ☺️!
