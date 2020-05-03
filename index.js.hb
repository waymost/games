const tiles = require('./tiles');

{{#each games}}
const game_{{#if group}}{{group}}_{{/if}}{{object}} = require("./games/{{file}}");
{{/each}}

const games = {
{{#each games}}
  "{{name}}": game_{{#if group}}{{group}}_{{/if}}{{object}}{{#unless @last}},{{/unless}}
{{/each}}
};

const publicGames = {
{{#each public_games}}
  "{{name}}": game_{{#if group}}{{group}}_{{/if}}{{object}}{{#unless @last}},{{/unless}}
{{/each}}
};

module.exports = {
  games,
  public: publicGames,
  tiles
};
