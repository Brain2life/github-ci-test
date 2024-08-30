import globals from "globals";
import pluginJs from "@eslint/js";

export default [
  {
    files: ["**/*.js"],
    languageOptions: {
      sourceType: "commonjs",
      globals: {
        ...globals.browser,
        ...globals.node, // Include Node.js globals 
        ...globals.jest, // Add Jest globals to ensure 'describe', 'test', 'expect', etc. are recognized
      },
    },
  },
  pluginJs.configs.recommended,
];