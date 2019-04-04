{resolve} =  require 'path'

module.exports = ({folder} = {folder: './config'}) ->
  reducer = (result, file) ->
    Object.assign result, require resolve(folder, file)
  require 'fs'
    .readdirSync folder
    .reduce reducer, {}
