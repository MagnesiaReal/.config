lua <<EOF
  require("scrollbar.handlers.search").setup()
  
  require("scrollbar").setup({
    handle = {
        color = "#636363",
    },
    marks = {
        Search = { color = "#FF6600" },
        Error = { color = "#FF2233" },
        Warn = { color = "#FFFF00" },
        Info = { color = "#888888" },
        Hint = { color = "#55AA11" },
        Misc = { color = "#FF00FF" },
    }
  })
  
EOF
