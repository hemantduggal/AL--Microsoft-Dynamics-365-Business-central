/// <summary>
/// Table RFQ Line (ID 50138).
/// </summary>
table 50138 "RFQ Line"
{
    DataClassification = ToBeClassified;
    Caption = 'RFQ Line';
    Description = 'This is A RFQ Line Table';
    TableType = Normal;

    fields
    {
        field(1; RFQ_Document_no; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; RFQ_Type; Enum "G/L Account Type")
        {
            DataClassification = ToBeClassified;

        }
        field(3; item_no; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Decription; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(5; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; UOM; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(7; Unit_price; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; Customer_No; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(9; Location_Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(10; Posting_date; Date)
        {
            DataClassification = ToBeClassified;

        }





    }

    keys
    {
        key(PK; RFQ_Document_no)
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
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data Renamed');
    end;

}