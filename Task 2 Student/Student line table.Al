/// <summary>
/// Table Student line Table (ID 50113).
/// </summary>
table 50113 "Student line Table"
{
    DataClassification = ToBeClassified;
    Caption = 'This is a sample table';
    TableType = Normal;
    Description = 'This is A Student table Description ';

    fields
    {
        field(1; Subject; Option)
        {
            OptionCaption = ' All Subjects';
            OptionMembers = English,physics,chemistry,bio,math;
            DataClassification = ToBeClassified;

        }

        field(5; No; Code[20])
        {

            DataClassification = ToBeClassified;

        }


        field(2; Marks; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Date of birth"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }












    }

    keys
    {
        key(Pk; Subject)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Data inserted');

    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;

}