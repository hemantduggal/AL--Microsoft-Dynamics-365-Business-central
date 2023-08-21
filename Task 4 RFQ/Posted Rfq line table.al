/// <summary>
/// Table  Posted RFQ Line (ID 50140).
/// </summary>
table 50140 " Posted RFQ Line"
{
    DataClassification = ToBeClassified;
    Caption = 'RFQ Line';
    Description = 'This is A RFQ Line Table';
    TableType = Normal;

    fields
    {
        field(1; L_RFQ_Document_no; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; L_RFQ_Type; Enum "G/L Account Type")
        {
            DataClassification = ToBeClassified;

        }
        field(3; L_item_no; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; L_Decription; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(5; L_Quantity; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; L_UOM; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(7; L_Unit_price; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; L_Customer_No; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(9; L_Location_Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(10; L_Posting_date; Date)
        {
            DataClassification = ToBeClassified;

        }





    }

    keys
    {
        key(PK; L_RFQ_Document_no)
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