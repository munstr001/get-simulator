# README Bot

This repository includes an automated workflow that makes three random updates to this file each day. The appended entries track when the bot last ran and help keep the repository active.

## Как запустить
- **Автоматически:** GitHub Actions запускается каждый день в 09:00 UTC. Ничего делать не нужно.
- **Вручную через GitHub:** откройте вкладку **Actions** → **Daily README Updates** → **Run workflow**, подтвердите запуск.
- **Локально:**
  1. Убедитесь, что установлены `git` и `openssl`.
  2. Выполните `chmod +x scripts/daily_random_commits.sh` один раз для установки прав.
  3. Запустите `scripts/daily_random_commits.sh`. Скрипт сам создаст три коммита в `README.md`.
  4. При необходимости запушьте изменения: `git push`.

## Daily log
Entries below are added automatically by the workflow.

- 2025-11-21T22:17:44Z | token: 8e7de23e
- 2025-11-21T22:17:45Z | token: a24ef249
