

class Quotes {
    int? userId;
    int? id;
    String? title;
    String? body;

    Quotes({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

     Quotes.fromJson(Map<String, dynamic> json){
        userId = json["userId"];
        id = json["id"];
        title = json["title"];
        body = json["body"];
    }

    
}
