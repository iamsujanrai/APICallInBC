table 50750 Trainee
{
    Caption = 'Trainee';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Text[50])
        {
            Caption = 'Id';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Grade; Text[50])
        {
            Caption = 'Grade';
            DataClassification = ToBeClassified;
        }
        field(4; "Roll No."; Integer)
        {
            Caption = 'Roll No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
}
