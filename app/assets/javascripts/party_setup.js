$(function(){
  console.log('beeee happyyyy')
});

var ReasonsView = new Backbone.View.extend({
  tagName: "reasons-checkbox-template",

  homeTpl: _.homepage("here we go"),

  events: {
    "reasons-checkbox-template":'test'
  },

  render: function(){
    this.$el.html(this.homeTpl());
    return this;
  }
})

var reasonsView = new ReasonsView();
console.log(reasonsView.el);