PageRouter = require 'router'

module.exports = class ApplicationViewModel
  constructor: ->
    _.bindAll(@, 'afterBinding')

    $('a.upload').click ->
      $('.dropdown-menu').toggle()

  afterBinding: (vm, el) ->
    $el = $(el)
    application_page_el = kb.renderTemplate('views/application', @)
    $el.append(application_page_el)
    new PageRouter($el.find('#pages')[0])
    Backbone.history.start({hashChange: true})