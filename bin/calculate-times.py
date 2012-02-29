import re
import sys

from datetime import date, timedelta

if len(sys.argv) < 3:
    print "Usage: python calculate-times.py <times-file> <filter expression>"
    sys.exit(1)

class TaskInfo(object):

    def __init__(self, description, date_str, duration_str):
        self.date = date(*map(int, date_str.split('-')))
        self.description = description

        durs = map(int, duration_str.split(':'))
        self.duration = timedelta(hours=durs[0], minutes=durs[1],
                                  seconds=durs[2])

    @property
    def key(self):
        return "{0} {1}".format(self.date, self.description)

    def combine(self, other):
        if self.date != other.date or self.description != other.description:
            return
        self.duration = self.duration + other.duration

    @property
    def numeric_duration(self):
        return self.rounded_duration.total_seconds() / 3600.0

    @property
    def rounded_duration(self):
        return round_timedelta(self.duration, timedelta(minutes=15))

    def __repr__(self):
        return "{} {} {}".format(self.date, self.description,
                                 self.rounded_duration)

def round_timedelta(td, interval):
    half = interval / 2
    td_sec = td.total_seconds()
    int_sec = interval.total_seconds()
    n = int(td_sec) / int(int_sec)
    new_td = interval * n
    if td_sec % int_sec > half.total_seconds():
        new_td = new_td + interval
    return new_td

def extract_task(line):
    fields = line.split(';')
    fields = [f.strip('"') for f in fields]
    return TaskInfo(fields[1], fields[2], fields[5])

def main():
    filename = sys.argv[1]
    filter_exp = re.compile(sys.argv[2])

    tasks = []
    task_map = {}

    with open(filename, 'r') as f:
        for line in f:
            if filter_exp.search(line):
                task_info = extract_task(line)
                if task_info.key in task_map:
                    task_map[task_info.key].combine(task_info)
                else:
                    tasks.append(task_info)
                    task_map[task_info.key] = task_info

    for task in sorted(sorted(tasks,key=lambda x: x.description),
                       key=lambda x: x.date):
        print "{} ${:.2f}".format(task, task.numeric_duration * 37)

    total_dur = sum([t.rounded_duration for t in tasks], timedelta(seconds=0))
    total_hours = int(total_dur.total_seconds()) / 3600
    total_minutes = int(total_dur.total_seconds()) % 3600 / 60
    num_total_hours = sum([t.numeric_duration for t in tasks])
    print "\n\nTotal: {}:{:02} ${:.2f}".format(total_hours, total_minutes,
                                               num_total_hours * 37)

if __name__ == "__main__":
    main()

