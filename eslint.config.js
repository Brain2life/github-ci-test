// eslint.config.js
export default [
    {
      files: ["**/*.js"],
      ignores: ["node_modules/**"],
      languageOptions: {
        ecmaVersion: "latest",
        sourceType: "module",
      },
      rules: {
        "no-unused-vars": "warn",
        "no-console": "off",
      },
      env: {
        browser: true,
        node: true,
      },
    },
  ];
  