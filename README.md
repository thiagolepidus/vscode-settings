# Minhas configurações do VSCode

Aqui você encontrará minhas principais configurações do VSCode que uso em minha máquina.
Minhas configurações estão sendo sempre atualizadas conforme meu gosto e necessidades, mas o que está aqui é todo conhecimento meu de configuração do VSCode acumulado de mais de 2 anos.

Usar estas configurações te trará a vantagem de já ter um ambiente de desenvolvimento no VSCode muito produtivo.

As configurações estão separadas nos seguintes tópicos:

- [Backup e sincronização das configurações do VSCode](#backup-e-sincronização-das-configurações-do-vscode)
- [Tema](#tema)
- [Font-family](#font-family)
- [Shell default](#shell-default)
- [Extensões](#extensões)
- [Alguns settings relevantes](#alguns-settings-relevantes)

## Backup e sincronização das configurações do VSCode

No 1º semestre de 2022, O VSCode passou a permitir backup das suas configurações e sincronização com o servidor do GitHub. Siga as instruções do link [https://code.visualstudio.com/docs/editor/settings-sync](https://code.visualstudio.com/docs/editor/settings-sync) e ative isto, agora você nunca mais perderá suas configurações e ainda poderá sincroniza-las com outros computadores.

## Tema

[Github Theme](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme) - Estilo `Github Dark`.

![Github Theme](img/github-theme.png)

## Font-family

Usar uma fonte adequada para desenvolvimento melhorará seu conforto ao programar e ler código, escolha uma fonte adequada.

Eu uso a [JetBrains Mono](https://www.jetbrains.com/lp/mono/) como fonte padrão.

Instale-a no seu computador e ativa-a no VSCode alterando a opção `editor.fontFamily`, exemplo:

```json
"editor.fontFamily": "\"JetBrains Mono\", 'Courier New', monospace",
```

Esta propriedade permite outras fontes como fallback se as primeiras não existirem.

## Shell default

Ter um shell que facilite a digitação de comandos é essencial para o desenvolvimento de software, eu uso o [oh my zsh](https://ohmyz.sh/).

Ele guardará histórico dos comandos, facilitará auto-complete entre outras coisas.

Neste [link](https://github.com/argentinaluiz/ambiente-dev-produtivo) eu mostro dicas de como instala-lo, além de configurações e ferramentas utilizado para Mac, Linux e Windows.

O oh my zsh permite configurar um tema de cores, eu uso o [powerlevel10k](https://github.com/romkatv/powerlevel10k). No link há instruções de como instala-lo e habilita-lo no oh my zsh. Instale também a fonte `Meslo Nerd` através do link: [https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).

> Para Windows:

> No Windows Terminal para a font Meslo Nerd funcionar no WSL, é necessário acessar Configurações -> Selecionar o Linux do lado esquerdo, clicar em Aparências em Configurações Adicionais e selecionar a fonte Meslo Nerd, como está na imagem:

> ![Github Theme](img/windows-terminal-font-meslo.png)

## Extensões

Minhas extensões podem ser facilmente instaladas no seu VSCode executando os seguintes comandos:

```bash
wget https://raw.githubusercontent.com/argentinaluiz/my-vscode-settings/main/vscode-settings/extensions.txt
wget -O - https://raw.githubusercontent.com/argentinaluiz/my-vscode-settings/main/install-extensions.sh | bash
```
