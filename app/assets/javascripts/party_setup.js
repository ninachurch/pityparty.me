$(function(){
  console.log('beeee happyyyy')
});

// var ReasonsView = new Backbone.View.extend({
//   tagName: "reasons-checkbox-template",

//   homeTpl: _.homepage("here we go"),

//   events: {
//     "reasons-checkbox-template":'test'
//   },

//   render: function(){
//     this.$el.html(this.homeTpl());
//     return this;
//   }
// })

// var reasonsView = new ReasonsView();
// console.log(reasonsView.el);

var App = {
    Views: {},
    Controllers: {},
    init: function() {
        // new App.Controllers.Reasons();
        // Backbone.history.start();
        console.log("inside the init!")
    }
};

App.Contollers.Reasons = Backbone.Controller.extend({
  routes: {
    "" : "displayReasonsCheckboxes",
    "party/reasons" : "submitReasons",
    "party" : "throwPityParty"
  },

  displayReasonsCheckboxes: function(){
    console.log("you made it to the boxes!")
  }
})