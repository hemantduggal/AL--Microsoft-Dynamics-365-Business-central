/// <summary>
/// Table  Posted RFQ Header (ID 50139).
/// </summary>
table 50139 " Posted RFQ Header"
{
    DataClassification = ToBeClassified;
    Caption = 'Posted RFQ Header';
    Description = 'This is A  Posted RFQ Header Table';
    TableType = Normal;

    fields
    {
        field(1; P_RFQ_Document_no; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; P_Document_Date; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(3; P_Posting_date; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(4; p_Customer_No; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(5; P_Customer_name; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(6; P_Location_Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }


    }

    keys
    {
        key(PK; P_RFQ_Document_no)
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