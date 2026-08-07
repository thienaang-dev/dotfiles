return {
  {
    "folke/snacks.nvim",
    --- @module 'snacks.nvim'
    --- @type snacks.config
    opts = {
      dashboard = {
        preset = {
          header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠛⠛⢻⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⣿⠀⠀⢸⣇⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⠋⠉⠉⠉⠀⠀⠈⠉⠉⠉⢹⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣀⣀⣀⣀⠀⠀⢀⣀⣀⣀⣸⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⣿⠀⠀⢸⡏⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀
⣿⢿⡀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⢰⣟⡇
⢿⠸⡇⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⣾⢸⡇
⢸⡀⢿⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⢰⡇⢸⠇
⢸⡇⠸⣆⢀⣀⡀⠀⠀⠀⢿⣤⣤⣼⡇⠀⠀⠀⣀⣀⢀⡾⠁⣸⠀
⠘⣧⠀⠙⢿⣍⠙⢦⡄⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⣹⠟⠁⢀⡿⠀
⠀⠙⢷⣄⠀⠙⢷⡈⠻⣦⡀⠀⠀⠀⣠⡾⠏⣠⡾⠃⢀⣴⠟⠁⠀
⠀⠀⠀⠙⢷⡀⠈⠉⠀⠈⢻⡄⠀⣼⠏⠁⠀⠉⠀⢠⡿⠁⠀⠀⠀
⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢀⡇⠀⣿⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⠁⠀⠀⠀⠀⣸⠃⠀⢹⡆⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀
⠀⠀⠀⣠⡏⠀⠀⠀⠀⠀⡿⠀⠀⠈⣷⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀
          ]],
        },
      },
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
          },
          files = {
            hidden = true, -- Show dotfiles/hidden files
            ignored = false, -- Set to true if you also want .gitignore'd files
          },
          grep = {
            hidden = true, -- Search inside hidden files too
          },
        },
      },
    },
  },
}
