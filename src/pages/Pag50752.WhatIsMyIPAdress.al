page 50752 "What Is My IP Adress"
{
    Caption = 'What Is My IP Adress';
    PageType = Card;
    Editable = false;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            field(IP; GetIP())
            {
                Caption = 'Current IP Adress of BC Server';
                ApplicationArea = All;
            }
        }
    }

    procedure GetIP(): Text
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JObj: JsonObject;
        ResponseText: Text;
    begin
        Client.Get('https://api.ipify.org?format=json', Response);
        if Response.IsSuccessStatusCode() then begin
            Response.Content().ReadAs(ResponseText);
            JObj.ReadFrom(ResponseText);
            exit(GetValueFromJson(JObj, 'ip'))
        end
    end;

    procedure GetValueFromJson(JObj: JsonObject; Member: Text): Text
    var
        Result: JsonToken;
    begin
        if JObj.Get(Member, Result) then begin
            exit(Result.AsValue().AsText());
        end;
    end;
}
