tableextension 50752 "My Job" extends Job
{
    fields
    {
        field(50752; MyProgress; Integer)
        {
            Caption = 'MyProgress';
            DataClassification = ToBeClassified;
        }
    }
}

pageextension 50752 "My Job" extends "Job Card"
{
    layout
    {
        addlast(General)
        {
            field(MyProgress; Rec.MyProgress)
            {
                ApplicationArea = All;
            }
        }
    }
}
