module.exports = {
    root: true,
    parser: '@typescript-eslint/parser', // Use TypeScript parser for TypeScript files
    plugins: ['@typescript-eslint', 'prettier'],
    extends: [
      'eslint:recommended',
      'plugin:@typescript-eslint/recommended', // Recommended TypeScript rules
      'prettier', // Use Prettier's formatting rules
    ],
    rules: {
      // Add any specific rules or overrides here
    },
  };
  