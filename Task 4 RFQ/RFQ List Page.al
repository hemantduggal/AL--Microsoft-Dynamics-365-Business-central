/// <summary>
/// Page RFQ list Page (ID 50141).
/// </summary>
page 50141 "RFQ list Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "RFQ Header";
    CardPageId = "RFQ Card page";




    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'general';

                field(RFQ_Document_no; Rec.RFQ_Document_no)
                {
                    ApplicationArea = All;

                }
                field(Customer_No; Rec.Customer_No)
                {
                    ApplicationArea = All;

                }



            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Test)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Data Inserted ');
                end;
            }
        }
    }


}