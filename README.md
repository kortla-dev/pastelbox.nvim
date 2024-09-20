# A Lush Theme for Neovim
Visit [Lush](https://github.com/rktjmp/lush.nvim) for more information.

## Pastelbox
Pastelbox is heavily inspired by [Gruvbox](https://github.com/morhetz/gruvbox) and offers a more pastel and soothing palette. 
It aims to provide a pleasant coding experience with soft colors.

### Installation
**Lazy:**

```lua
return {
  "kortla-dev/pastelbox.nvim",
  dependencies = {
    "rktjmp/lush.nvim",
  },
  lazy = false,
  priority = 1000,
}
```

For customization, refer to the lush [documentation](https://github.com/rktjmp/lush.nvim/blob/main/EXTEND.md)
