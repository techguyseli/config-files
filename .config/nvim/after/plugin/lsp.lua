local lsp_zero = require('lsp-zero')
local home = os.getenv("HOME")

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})

    vim.keymap.set('n', ';;', vim.lsp.buf.code_action, {buffer = bufnr})
end)


-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
        "jdtls",
    },
    handlers = {
        function(server_name)
            if server_name == "jdtls" then
                require('lspconfig').jdtls.setup({
                    cmd = {
                        'java',
                        '-javaagent:' .. home .. '/.local/share/nvim/mason/packages/jdtls/lombok.jar',
                        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                        '-Dosgi.bundles.defaultStartLevel=4',
                        '-Declipse.product=org.eclipse.jdt.ls.core.product',
                        '-Dlog.level=ALL',
                        '-Xms1g',
                        '-Xmx2G',
                        '-jar', home .. '/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
                        '-configuration', home .. '/.local/share/nvim/mason/packages/jdtls/config_linux',
                        '-data', home .. '/.workspace/jdtls'
                    },
                    root_dir = require('lspconfig.util').root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
                })
            else
                require('lspconfig')[server_name].setup({})
            end
        end,
    },
})
