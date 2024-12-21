#1/usr/bin/env bash
#Exit on ennor
set-o errexit

#Modify this line as needed for your package manager (pip, poetry, etc.)
pip installer requirements.txt

#Convert static asset files
python manage.py collectstatic --no-input

#Apply any outstanding detabase migrations
python manage.py migrate