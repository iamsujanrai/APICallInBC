page 50751 "Trainee List"
{
    Caption = 'Trainee List';
    PageType = List;
    SourceTable = Trainee;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                }
                field("Roll No."; Rec."Roll No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
