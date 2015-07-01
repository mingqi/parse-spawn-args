parse-spawn-args
===========

If you need to spawn child process in Node.js, and need to parse a string command to a list arguments that pass to child process,  this module will be helpful. Here is examples:

## usage

### parse args with quote around
```
var parse = require('parse-spawn-args').parse
parse('-port 80 --title "this is a title"')
/*
    [
        '-port',
        '80',
        '--title',
        'this is a title'
    ]
/*
```

### parse args with quote escape
```
var parse = require('parse-spawn-args').parse
parse('-port 80 --title "this is a \\"title\\"')
/*
    [
        '-port',
        '80',
        '--title',
        'this is a "title"'
    ]
*/
```

