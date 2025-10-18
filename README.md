# Godot Web Template — ODS

Projeto **Godot 4** mínimo com cena simples e **CI para GitHub Pages**.
Além do export automático, existe **fallback estático** (public/) para você testar a pipeline sem export.

## Como usar
1. Abra a pasta no **Godot 4.x** e rode a cena `scenes/Main.tscn`.
2. Ajuste o `game.json` com os metadados do seu jogo.
3. (Opcional) Configure um preset **Web** em *Project → Export* (este template inclui um preset básico em `export_presets.cfg` com nome `Web` e saída `build/index.html`).
4. Faça push na branch `main`. O workflow tentará exportar via Godot Headless; se não conseguir, publica `public/` como fallback.

## Godot no CI
- Workflow tenta instalar o Godot headless + templates. Você pode travar a versão via `env.GODOT_VERSION`.
- Se o export funcionar, publica `build/` + `game.json` + `thumb.png` (se houver).
- Se o export falhar (ou preset não existir), copia `public/` para o Pages.

## Tópicos/Descoberta
Adicione os **Topics** no repositório: `ods-game`, `ods-<n>`. O Portal descobre automaticamente via topic.

## Publicação
GitHub Pages: `https://<org>.github.io/<repo>/`

