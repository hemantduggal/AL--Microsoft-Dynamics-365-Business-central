/// <summary>
/// Table RFQ Header (ID 50137).
/// </summary>
table 50137 "RFQ Header"
{
    DataClassification = ToBeClassified;
    Caption = 'RFQ Header';
    Description = 'This is A RFQ Header Table';
    TableType = Normal;

    fields
    {
        field(1; RFQ_Document_no; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Document_Date; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(3; Posting_date; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(4; Customer_No; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(5; Customer_name; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(6; Location_Code; Code[20])
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