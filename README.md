{
    "editor.formatOnPaste": true,
    "git.autofetch": true,
    "workbench.iconTheme": "material-icon-theme",
    "editor.fontFamily": "GoMono NF",
    "window.zoomLevel": 1,
    "editor.minimap.enabled": false,
    "vim.smartRelativeLine": true,
    "editor.lineNumbers": "relative",
    "vim.easymotion": true,
    "vim.statusBarColorControl": true,
    "workbench.colorCustomizations": {
        "statusBar.background": "#5f00af",
        "statusBar.noFolderBackground": "#5f00af",
        "statusBar.debuggingBackground": "#5f00af",
        "statusBar.foreground": "#ffffff",
        "statusBar.debuggingForeground": "#ffffff"
    },
    "editor.formatOnSave": true,
    "python.analysis.autoImportCompletions": true,
    "python.analysis.fixAll": [
        "source.unusedImports"
    ],
    "editor.defaultFormatter": "charliermarsh.ruff",
    "files.exclude": {
        "**/__pycache__": true,
        "**/.cache": true,
        "**/.coverage": true,
        "**/.coverage.*": true,
        "**/.hypothesis": true,
        "**/.mypy_cache": true,
        "**/.nox": true,
        "**/.pytest_cache": true,
        "**/.ruff_cache": true,
        "**/.tox": true
    },
    "[robotframework]": {
        "editor.defaultFormatter": "d-biehl.robotcode"
    },
    "files.insertFinalNewline": true
}

{
    "robotcode.robot.pythonPath": [".env/Scripts/python"],
}

rfbrowser show-trace [zipfile]
