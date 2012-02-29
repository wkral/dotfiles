import sys
import re

def parse_duration(duration_str):
    if not re.match(r'\d+:[0-6]\d:[0-6]\d', duration_str):
        return 0
    hours, mins, secs = map(int, duration_str.split(':'))
    return hours * 3600 + mins * 60 + secs

if __name__ == "__main__":
    if len(sys.argv) < 2:
        sys.exit(1)

    for arg in sys.argv[1:]:
        seconds = parse_duration(arg)
        print "{:0.2f}".format(round(seconds / 3600.0, 2))


