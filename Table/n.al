/// <summary>
/// Table MyTable (ID 50102).
/// </summary>
table 50102 "DetailedCust.ledg.Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "GST Component "; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "GST %"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(3; "GST Amount"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; "GST %")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}