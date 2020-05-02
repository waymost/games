{{#each games}}
const game_{{#if group}}{{group}}_{{/if}}{{object}} = require("./games/{{file}}");
{{/each}}

let games = {
{{#each games}}
  "{{name}}": game_{{#if group}}{{group}}_{{/if}}{{object}}{{#unless @last}},{{/unless}}
{{/each}}
};

games.public = {
{{#each public_games}}
  "{{name}}": game_{{#if group}}{{group}}_{{/if}}{{object}}{{#unless @last}},{{/unless}}
{{/each}}
};

module.exports = games;
