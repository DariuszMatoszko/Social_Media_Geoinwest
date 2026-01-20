# Uruchomienie na macOS

## Tryb deweloperski

Uruchom panel w Terminalu:

```bash
python3 app/main.py
```

## Budowanie aplikacji .app

Zbuduj aplikację:

```bash
bash scripts/build_mac_app.sh
```

Jeśli skrypty nie są wykonywalne, ustaw uprawnienia:

```bash
chmod +x scripts/build_mac_app.sh scripts/run_mac.command
```

## Gdzie znajdę .app

Po buildzie aplikacja znajduje się tutaj:

```
dist/Social Media Panel.app
```

## Launchpad

Aby aplikacja była widoczna w Launchpad, przenieś ją do:

```
/Applications
```
