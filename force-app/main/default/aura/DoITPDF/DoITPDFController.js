({
   openModel: function(component, event, helper) {
      component.set("v.isOpen", true);
       var hostname = window.location.hostname;
       var urlString = window.location.href;
       var baseURL = urlString.substring(0, urlString.indexOf("/s/"));
       if(baseURL.length > 0){
           component.set('v.baseurl', baseURL);  
       }
   },
   closeModel: function(component, event, helper) {
      component.set("v.isOpen", false);
   }
})