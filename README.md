# github-ci-test

Solutions for the exercises from the [Fundamentals of DevOps Part 5: How to set up CI and CD ](https://www.gruntwork.io/fundamentals-of-devops/setup-ci-cd#how_to_set_up_ci_cd)

## Exercises

1. To help catch bugs, update the GitHub Actions workflow to run a JavaScript linter, such as [JSLint](https://www.jslint.com/) or [ESLint](https://eslint.org/), after every commit.
2. To help keep your code consistently formatted, update the GitHub Actions workflow to run a code formatter, such as [Prettier](https://prettier.io/), after every commit.
3. Run both the linter and code formatter as a precommit hook, so these checks run on your own computer before you can make a commit. You may wish to use the [pre-commit](https://pre-commit.com/) framework to manage your precommit hooks.
4. Ensure that GitHub is authenticated to AWS and able to perform `tofu test` command for unit testing.
5. To help keep your code consistently formatted, update the GitHub Actions workflow to run a code formatter, such as `tofu fmt`, after every commit.

## Adding ESLint step

For more information about ESLint refer to [Getting Stared](https://eslint.org/docs/latest/use/getting-started) guide

To initalize the ESlint package run:

```bash
npm init @eslint/config@latest
```

To run the lint tests:

```bash
npm run lint
```

## Adding Prettier step

To install prettier:

```bash
npm install --save-dev --save-exact prettier
```

To learn more, see [Prettier](https://prettier.io/docs/en/install)

## Adding pre-commit hook

To install pre-commit run:

```bash
pip install pre-commit
```

To check the installation:

```bash
pre-commit --version
```

To learn more, see [pre-commit](https://pre-commit.com/#install)

Create and configure `.pre-commit-config.yaml` config file with ESlint and Prettier

To install the hooks from the config file, run:

```bash
pre-commit install
```

To test the installed hooks and run against all files in the root of the project, run:

```bash
pre-commit run --all-files
```

## Adding code formatter step for tofu

To add code formatter step, use the `opentofu/setup-opentofu@v1` action and run `tofu fmt` command