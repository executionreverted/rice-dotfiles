require("mini.comment").setup({
  mappings = {
    -- Toggle comment (like `gcip` - comment inner paragraph) for both
    -- Normal and Visual modes
    comment = "g.,",

    -- Toggle comment on current line
    comment_line = "g.:",

    -- Toggle comment on visual selection
    comment_visual = "g..",
  },
})

return {
  {
    "mini.comment",
  },
}
