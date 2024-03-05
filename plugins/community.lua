return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim"},
   -- Vim match-up: even better `%`
  { import = "astrocommunity.motion.vim-matchup" }, 
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
