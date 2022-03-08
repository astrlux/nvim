### Neovim LuaJIT Motivation

- A configuration like this achieves the "modern" I.D.E.'s full featureset -- even superseding it in many ways. All this, while hogging 1800% less memory. Cull your plugins on absolute necessity.
- A lot of life packed into 420 lines of Lua ☾

```
nvim
├── init.lua
└── lua
    └── m
        ├── appearance.lua
        ├── completion.lua
        ├── finder.lua
        ├── highlight.lua
        ├── indent.lua
        ├── latex.lua
        ├── lsp.lua
        ├── maps.lua
        ├── parsers.lua
        ├── plugins.lua
        ├── sets.lua
        ├── status.lua
        ├── temp.lua
        └── tree.lua
```
