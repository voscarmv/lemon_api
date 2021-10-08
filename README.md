# Lemon API

Api for [Lemonade Stand](https://www.github.com/voscarmv/lemonade_stand)

# Installation

Remember to...

```
$ cd $REPO
$ bundler
$ echo "jwt_secret: `rails secret`"    # ...copy the output of this
$ EDITOR=gedit rails credentials:edit  # and paste it here.
$ heroku config:set RAILS_MASTER_KEY=`cat config/master.key` # And this if heroku
```

