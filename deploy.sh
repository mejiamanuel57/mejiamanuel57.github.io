# abort on errors
set -e

# build
echo Linting..
npm run lint
echo Building. this may take a minute...
npm run build

# navigate into the build output directory
cd docs

# remover comment if you are deploying to a custom domain
 echo 'manuelmejiajr.com' > CNAME

# getting out of the build output directory
cd -

# deploy
git add -A
read -p "enter git commit message: "  message 
git commit -m ''"$message"''
git push -f https://github.com/mejiamanuel57/personal-website master

