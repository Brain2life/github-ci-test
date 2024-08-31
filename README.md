# github-ci-test

Test GitHub CI capabilities as part of [Fundamentals of DevOps](https://www.gruntwork.io/fundamentals-of-devops) practice labs

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
