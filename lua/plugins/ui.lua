return {
  -- dashboard
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
██████╗ ███████╗██╗   ██╗███████╗███████╗██████╗  ██████╗ 
██╔══██╗██╔════╝██║   ██║╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
██║  ██║█████╗  ██║   ██║  ███╔╝ █████╗  ██████╔╝██║   ██║
██║  ██║██╔══╝  ╚██╗ ██╔╝ ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
██████╔╝███████╗ ╚████╔╝ ███████╗███████╗██║  ██║╚██████╔╝
╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
                  github.com/jerryshell
      ]]
      opts.section.header.val = vim.split(logo, "\n", {})
      opts.section.buttons.val = {
        dashboard.button("p", " " .. "Open project", ":Telescope project display_type=full <CR>"),
        dashboard.button("e", " " .. "New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", " " .. "Find file", ":cd $HOME/Projects | Telescope find_files <CR>"),
        dashboard.button("r", " " .. "Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("s", "勒" .. "Restore Session", [[:lua require("persistence").load() <CR>]]),
        dashboard.button("c", " " .. "Config", ":e $MYVIMRC <CR>"),
        dashboard.button("l", "鈴" .. "Lazy", ":Lazy <CR>"),
        dashboard.button("m", " " .. "Mason", ":Mason <CR>"),
        dashboard.button("q", " " .. "Quit", ":qa <CR>"),
      }
      opts.config.opts.setup = function()
        vim.api.nvim_create_autocmd("User", {
          pattern = "AlphaReady",
          desc = "disable tabline for alpha",
          callback = function()
            vim.opt.showtabline = 0
          end,
        })
        vim.api.nvim_create_autocmd("BufUnload", {
          buffer = 0,
          desc = "enable tabline after alpha",
          callback = function()
            vim.opt.showtabline = 2
          end,
        })
      end
    end,
  },
}
