var smarterTrackChat_Defined=1,smarterTrackChat_UpdateCount=[];function smarterTrackChat_CheckRefreshTime(e,t,r){var a,n,o,i=window.document.getElementById("stimgdetect"+t);i&&i.src&&(a=i.offsetHeight,n=window.document.getElementById(t+"_online"),o=window.document.getElementById(t+"_offline"),a>0&&(n&&(n.style.display=1===a?"":"none"),o&&(o.style.display=2===a?"":"none"))),r>0&&(smarterTrackChat_UpdateCount[t]=(smarterTrackChat_UpdateCount[t]||0)+1,smarterTrackChat_UpdateCount[t]>=5*r&&(i&&(i.src=e+"&time="+(new Date).getTime()),smarterTrackChat_UpdateCount[t]=0)),setTimeout("smarterTrackChat_CheckRefreshTime('"+e+"','"+t+"',"+r+");",200)}function smarterTrackChat_EmbedDetectorImage(e,t){var r=document.createElement("img");r.id="stimgdetect"+e,r.src=t+"&time="+(new Date).getTime(),r.style.position="absolute",r.style.top="0px",r.style.left="0px",r.style.visibility="hidden",document.body.insertBefore(r,document.body.firstChild)}function smarterTrackChat_CreateSection(e,t,r){var a,n;return t.ImageUrl?((a=document.createElement("img")).src=t.ImageUrl,a.style.width="70px"):(a=document.createElement("span")).innerHTML=t.Text,(n=document.createElement("a")).id=e+(r?"_online":"_offline"),n.className=t.CssClass||"",n.href=t.Url,n.style.display="none",n.target=t.Target||"_blank",n.title=t.Title,n.appendChild(a),r&&(n.target="",n.href="#",n.onclick=function(r){var a=r||window.event,n=window.open(t.Url,"LiveChat"+e,"toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=1,width=360,height=420");return n&&(n.focus(),n.opener=window),a.preventDefault&&a.preventDefault(),a.stopPropagation&&a.stopPropagation(),a.cancelBubble&&(a.cancelBubble=!0),!1}),n}function smarterTrackChatInit(e){var t=document.getElementById(e.ControlID);t&&(smarterTrackChat_EmbedDetectorImage(e.ControlID,e.RefreshUrl),t.appendChild(smarterTrackChat_CreateSection(e.ControlID,e.Online,!0)),void 0!=e.Offline&&t.appendChild(smarterTrackChat_CreateSection(e.ControlID,e.Offline,!1)),smarterTrackChat_CheckRefreshTime(e.RefreshUrl,e.ControlID,e.RefreshTimeSeconds))}
//# sourceMappingURL=ChatLink.js.map

smarterTrackChatInit({
  "ControlID": "wslivechat",
  "RefreshUrl": "//chat.website.com:443/ChatLink.ashx?config=4&refresh=1",
  "RefreshTimeSeconds": 10,
  "Online": {
    "Url": "//chat.website.com:443/Main/Chat/frmClientChat.aspx?config=4",
    "Target": "",
    "Title": "Chat with us!",
    "ImageUrl": "",
    "CssClass": null,
    "Text": "Website.com Live Chat Online"
  },
  "Offline": {
    "Url": "https://www.website.com/case-tracker/new-case/",
    "Target": "",
    "Title": "Leave us a message!",
    "ImageUrl": "",
    "CssClass": null,
    "Text": "Website.com Live Chat Offline"
  }
});
