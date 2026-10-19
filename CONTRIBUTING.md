# Contributing to MCP System Monitor

Bedankt voor je interesse om bij te dragen aan MCP System Monitor!

## Hoe kan ik bijdragen?

### Bugs rapporteren

1. Controleer eerst of de bug al is gerapporteerd in de [Issues](https://github.com/hmol33/mcp-system-monitor/issues)
2. Maak een nieuwe issue aan met:
   - Een duidelijke titel
   - Stappen om de bug te reproduceren
   - Verwacht vs. werkelijk gedrag
   - Je OS (Linux, macOS, Windows) en Python-versie
   - Relevante log-output

### Features voorstellen

1. Open eerst een issue om de feature te bespreken
2. Wacht op goedkeuring voordat je code schrijft
3. Kleine, gefocuste features hebben voorkeur

### Pull Requests

1. Fork de repo en maak een feature-branch aan
2. Zorg dat `pytest` slaagt en nieuwe tests toegevoegd zijn voor nieuwe functionaliteit
3. Test je changes lokaal voordat je pusht
4. Maak een PR aan met een duidelijke beschrijving van wat en waarmee

## Code Stijl

- **Python**: PEP 8, type hints waar mogelijk
- **Tests**: pytest met `conftest.py` voor gemeenschappelijke fixtures
- **Documenteer** nieuwe MCP tools en resources in de README

## Ontwikkelomgeving

```bash
# Clone de repo
git clone https://github.com/hmol33/mcp-system-monitor.git
cd mcp-system-monitor

# Installeer dependencies
pip install -r requirements.txt
pip install -e .

# Test
pytest

# Start de server
python mcp_system_monitor_server.py
```

## Testen

```bash
# Alle tests
pytest

# Met verbose output
pytest -v

# Specifiek test-bestand
pytest tests/test_mcp_system_monitor_server.py -v

# Coverage (indien geinstalleerd)
pytest --cov=. --cov-report=term-missing
```

## Documentatie

- Zie [README.md](README.md) voor volledige documentatie
- Zie [tests/README.md](tests/README.md) voor testdocumentatie

## Licentie

Door bij te dragen ga je akkoord dat je bijdragen onder de MIT-licentie worden uitgebracht.
