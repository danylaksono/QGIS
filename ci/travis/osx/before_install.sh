brew tap osgeo/osgeo4mac
brew update
brew install osgeo/osgeo4mac/qgis-28 --without-postgis --without-postgresql --without-grass --without-gpsbabel --only-dependencies
brew install qca
brew install spawn-fcgi
brew install lighttpd
brew install poppler

brew ln bison --force
brew ln sqlite --force
brew ln openssl --force
brew ln expat --force
brew ln libxml2 --force
brew ln gettext --force
brew ln libffi --force

mkdir -p ${HOME}/Library/Python/2.7/lib/python/site-packages
echo 'import site; site.addsitedir("/usr/local/lib/python2.7/site-packages")' >> ${HOME}/Library/Python/2.7/lib/python/site-packages/homebrew.pth

# Needed for Processing
pip install psycopg2 numpy nose2 pyyaml mock future
