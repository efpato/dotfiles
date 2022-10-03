#!/usr/bin/env python

import json
from pathlib import Path
from typing import Any
from urllib.request import urlopen


def get_rates() -> dict[str, dict[str, Any]]:
    response = urlopen("https://www.cbr-xml-daily.ru/daily_json.js")
    date = json.loads(response.read())

    return date["Valute"]


def main(*currencies: str):
    rates = get_rates()

    for currency in currencies:
        current, previous = rates[currency]["Value"], rates[currency]["Previous"]

        if current > previous:
            arrow = "↑"
        elif current < previous:
            arrow = "↓"
        else:
            arrow = ""

        with open(Path(__file__).parent / currency, "w") as file:
            file.write(f"{current:.2f}{arrow}")


if __name__ == "__main__":
    main("USD", "EUR")
