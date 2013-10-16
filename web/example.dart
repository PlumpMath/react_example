import 'package:js/js.dart' as js;
import 'dart:html';

void main() {

  var element = query('#content');
  var commentBoxOptions = js.map({
    'render': new js.Callback.many(() {
      return js.context.React.DOM.div(js.map({
        'className': 'commentBox',
        'children': 'Hello world! I am a CommentBox.'
      }));
    })
  });

  var CommentBox = js.context.React.createClass(commentBoxOptions);

  js.context.React.renderComponent(CommentBox(js.map({})), element);

}