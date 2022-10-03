#!/usr/bin/env python

import json
from calendar import month_abbr
from datetime import date
from decimal import Decimal
from pathlib import Path
from typing import Any
from urllib.request import urlopen


def get_rates(year: int) -> list[str]:
    response = urlopen(
        f"https://www.kursvaliut.ru/csv_data.php?format=json&simbol=USD&an={year}&medii=1&lang=en"
    )
    data = json.loads(response.read())

    return [item["my_value"] for item in data]


def main():
    today = date.today()

    if today.month == 1:
        prev = (month_abbr[12], Decimal(get_rates(today.year - 1)[-1]))
        curr = (month_abbr[1], Decimal(get_rates(today.year))[0])
    else:
        rates = get_rates(today.year)
        prev = (month_abbr[today.month - 1], Decimal(rates[today.month - 2]))
        curr = (month_abbr[today.month], Decimal(rates[today.month - 1]))

    rates = get_rates(today.year)

    with open(Path(__file__).parent / "AVG", "w") as file:
        file.write(f"{prev[0]}: {prev[1]:.2f} / {curr[0]}: {curr[1]:.2f}")


if __name__ == "__main__":
    main()
