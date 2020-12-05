# choco-blitz-app
Chocolatey installer for Blitz app (https://blitz.gg).

Issues? Bugs? Suggestions? Create an issue on [GitHub](https://github.com/quinnjn/choco-blitz-app/), or make a pull request.

## Development
1. Make changes to the code.

1. Build nupkg:
   ```
   choco pack
   ```

1. Then try install:
   ```
   choco install blitz-app -dv -s .
   ```

1. Then try uninstall:
   ```
   choco uninstall blitz-app -dv -s .
   ```

Then submit a PR!