# EHA Code Dark Theme

A VS Code theme designed to match my JetBrains Rider setup with:
- **jake-theme** UI.
- **EHA Studio Dark** editor colour scheme.

## Features

- **Pure black UI chrome**: activity bar, sidebar, tab bar, title bar, status bar, and terminal.
- **Near-black editor** with a darker gutter.
- **Visual Studio Dark syntax highlighting** colours.
- Consistent with JetBrains Rider appearance.
- High contrast for better readability.

## Requirements

This theme requires the [JetBrains Mono](https://www.jetbrains.com/lp/mono/) font to be installed.

**Note:** if you have a JetBrains IDE installed, the font will be installed already.

## Installation

### VS Code Marketplace

1. Open VS Code.
2. Open the Extensions view (`Ctrl+Shift+X` / `Cmd+Shift+X`).
3. Search for **EHA Code Dark**.
4. Click **Install**.
5. Open the Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`).
6. Select **Preferences: Colour Theme**.
7. Choose **EHA Code Dark**.

### Manually

1. Run the included `install-windows.ps1` script _or_ manually copy the `eha-code-dark` folder to your VS Code extensions directory:
   - Windows: `%USERPROFILE%\.vscode\extensions\`
   - macOS: `~/.vscode/extensions/`
2. Restart VS Code and select the theme via the Command Palette as above.

## Colour Palette

### UI Colours
- ![#000000](https://placehold.co/12x12/000000/000000.png) `#000000`: UI chrome (activity bar, sidebar, tab bar, title bar, status bar, terminal).
- ![#111111](https://placehold.co/12x12/111111/111111.png) `#111111`: Editor background.
- ![#181818](https://placehold.co/12x12/181818/181818.png) `#181818`: Editor gutter.
- ![#245B82](https://placehold.co/12x12/245B82/245B82.png) `#245B82` / ![#0B293F](https://placehold.co/12x12/0B293F/0B293F.png) `#0B293F`: Selection.
- ![#383838](https://placehold.co/12x12/383838/383838.png) `#383838`: Active tab.

### Syntax Colours
- ![#569CD6](https://placehold.co/12x12/569CD6/569CD6.png) `#569CD6`: Keywords.
- ![#D69D85](https://placehold.co/12x12/D69D85/D69D85.png) `#D69D85`: Strings.
- ![#57A64A](https://placehold.co/12x12/57A64A/57A64A.png) `#57A64A`: Comments.
- ![#DCDCAA](https://placehold.co/12x12/DCDCAA/DCDCAA.png) `#DCDCAA`: Functions.
- ![#4EC9B0](https://placehold.co/12x12/4EC9B0/4EC9B0.png) `#4EC9B0`: Types/Classes.
- ![#B5CEA8](https://placehold.co/12x12/B5CEA8/B5CEA8.png) `#B5CEA8`: Numbers.
- ![#B8D7A3](https://placehold.co/12x12/B8D7A3/B8D7A3.png) `#B8D7A3`: Interfaces.

## Source

Derived from:
- [jake-theme](https://plugins.jetbrains.com/plugin/12182-jake-s-theme) by Jake Coffman.
- Visual Studio Dark editor scheme.
