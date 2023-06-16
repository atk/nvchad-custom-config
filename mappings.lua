---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<a-up>"] = { "<cmd> m -2<CR>", "move line up" },
    ["<a-down>"] = { "<cmd> m +1<CR>", "move line down" },
    ["<f2>"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "rename variable" },
    ["<c-s>"] = { "<cmd>w<CR>", "save buffer" },
    ["<c-q>"] = { "<cmd>quitall<CR>", "quit all" },
    ["<a-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<a-e>"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show full error message" },
    ["<F5>"] = { "<cmd>lua require 'dap'.continue()<CR>", "Continue after breakpoint" },
    ["<F10>"] = { "<cmd>lua require 'dap'.step_over()<CR>", "Step over" },
    ["<F11>"] = { "<cmd>lua require 'dap'.step_into()<CR>", "Step into" },
    ["<leader>b"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>B"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
      end,
      "Add conditional breakpoint",
    },
    ["<leader>NI"] = {
      function()
        require("package-info").install()
      end,
      "Install npm package",
    },
    ["<leader>NU"] = {
      function()
        require("package-info").update()
      end,
      "Update npm package",
    },
    ["<leader>ND"] = {
      function()
        require("package-info").delete()
      end,
      "Delete npm package",
    },
  },
  i = {
    ["<a-up>"] = { "<cmd> m -2<CR>", "move line up" },
    ["<a-down>"] = { "<cmd> m +1<CR>", "move line down" },
    ["<f2>"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "rename variable" },
    ["<c-s>"] = { "<cmd>w<CR>", "save buffer" },
    ["<c-q>"] = { "<cmd>quitall<CR>", "quit all" },
  },
  t = {
    ["<c-c>"] = { "<C-\\><C-c>", "send sigint" },
  },
}

-- more keybinds!

return M
