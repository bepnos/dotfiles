-- Settings configuration
vim.api.nvim_set_option("clipboard","unnamedplus")
vim.cmd("set clipboard=unnamedplus")
vim.opt.relativenumber = true
lvim.colorscheme = "gruvbox"
lvim.transparent_window = true
lvim.builtin.nvimtree.setup.sync_root_with_cwd = false
lvim.builtin.terminal.open_mapping = "<c-t>"
vim.opt.number = true
lvim.keys.normal_mode["<leader>v"] = ":vsplit<CR>"
lvim.builtin.which_key.mappings["h"] = {}
lvim.keys.normal_mode["<leader>h"] = ":split<CR>"
-- List of plugins to load
lvim.plugins = {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  {
  "ahmedkhalf/lsp-rooter.nvim",
  event = "BufRead",
  config = function()
    require("lsp-rooter").setup()
  end,
  },
  {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup()
    end,
  },
  {
    "0x100101/lab.nvim"
  },
  {
  "ggandor/leap.nvim",
  name = "leap",
  config = function()
    require("leap").add_default_mappings()
  end,
  },
{"andweeb/presence.nvim"},
{ "nvim-neotest/neotest"},
{"nvim-neotest/neotest-python"},
{
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
{"stevearc/dressing.nvim"},
  {"AckslD/swenv.nvim"},
}
table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup() -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
      require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
    end, 100)
  end,
})

-- lab.nvim config
require("lab").setup{
  code_runner = {
    enabled = true,
  },
  quick_date = {
    enabled = true,
  }
}
lvim.builtin.which_key.mappings["r"] = {
  name = "Runners",
 r = {"<cmd> Lab code run<CR>", "Run lab"},
 s = {"<cmd> Lab code stop<CR>", "Stop lab"},
}

-- greeter custom logo
lvim.builtin.alpha.dashboard.section.header.val = {
"                                                                                ",
"                                                                                ",
"                                                                                ",
"                   &                                           (##              ",
"               %%   &                                      && %/&&%%            ",
"              %%&  #%( %&&                              &(& &/(& &(&            ",
"              % ,##/#///# %                           (&#(,% (#*%/(%            ",
"                %*##&.#*#(/&(                       &%&(#,%% ,/*###             ",
"              #%#,/(,&&&&(#/(##%                  &/*/ ,(,& %/(/#&*             ",
"                #/#%#(%(//**(*/%%                %#(.%(#%& (((%/#&%             ",
"                %**/%/&# /#/.%%#*/ &&%       /&(/#,(*(## &(#,(**#*              ",
"                 /*#,, ,   %/ ,/(*,*  &   &##(((*%*/(#%   #(,,%%%&              ",
"                #%(.///%      (*//(/(%    ##/##**/((#   &//(//#/,               ",
"                 &&(#,/(*      %#.##/#% &,&*%/%*(%#     ##(&#/(/                ",
"                  %(.(**(#      %&# ***(*%#*/%#(#(     %*/*,%#&&                ",
"                  &((*(**%*     &#&./*(#(//#(((##   %  ((**(#                   ",
"                    #,///,,#    #(./(/##/*(#(*/ (& %% %(*,/*#,                  ",
"                   % %//(*(# #  &%#((&,%(,*/ (#&& &&&%&#,(*/#                   ",
"                      %*/(%(##%&,&*#(%*//**/#%(  %/(#/**#(*&                    ",
"                       %&(/ // % &#*#(/(/,*(/#%(% /(%,#*&&(                     ",
"                       #%(##/ &##**#((%,**(%(%/#&%//##&(%*                      ",
"                       %% &#&&*(%#* ,#%(#,/#%# # /##  #&                        ",
"                           %&##%/%((%%(&#%&/& (( %   &%%                        ",
"                           &&& %%&#  %   %#& %&   / #                           ",
"                             (   &      %*  * %  &                              ",
"                             % #      (/# & %%&&/#                              ",
"                                  &% /        &                                 ",
"                                   (                                            ",
"                                                                                ",
}
lvim.builtin.alpha.dashboard.section.header.opts.hl = "HighlightGroupName"
