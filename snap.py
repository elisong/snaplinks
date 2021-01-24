import os
import subprocess
from datetime import datetime

today = datetime.today().strftime('%Y-%m-%d')

with open('keywords.txt', 'r') as f:
    for line in f.readlines():
        keyword = line.strip()
        if keyword:
            if not os.path.isdir(keyword):
                os.makedirs(keyword)
            subprocess.run(["cd", keyword])
            subprocess.run(['google', keyword, '--site',
                            'github.com', '--num', '20', '-o', today + '.md'])
            subprocess.run(["cd", '..'])
