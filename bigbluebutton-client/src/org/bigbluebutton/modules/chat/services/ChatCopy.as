package org.bigbluebutton.modules.chat.services
{
  import flash.system.System;
  
  import mx.controls.Alert;
  
  import org.bigbluebutton.core.model.LiveMeeting;
  import org.bigbluebutton.modules.chat.events.ChatCopyEvent;
  import org.bigbluebutton.modules.chat.model.ChatConversation;
  import org.bigbluebutton.util.i18n.ResourceUtil;

  public class ChatCopy
  {
    public function copyAllText(e:ChatCopyEvent):void {
      var chatId: String = e.chatId;
      var chat: ChatConversation = LiveMeeting.inst().chats.getChatConversation(chatId);
      System.setClipboard(chat.getAllMessageAsString());
      Alert.show(ResourceUtil.getInstance().getString('bbb.chat.copy.complete'), "", Alert.OK);
    }
  }
}
