/// <summary>
/// Page RFQ subform page (ID 50143).
/// </summary>
page 50143 "RFQ subform page"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "RFQ Line";
    Caption = 'RFQsubform page';
    Description = 'This is a subfrom page ';
    AboutText = 'RFQSubform PAge ';
    AboutTitle = 'This Is a RFQSubform Page ';


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
                field(RFQ_Type; Rec.RFQ_Type)
                {
                    ApplicationArea = All;

                }
                field(item_no; Rec.item_no)
                {
                    ApplicationArea = All;

                }

                field(Decription; Rec.Decription)
                {
                    ApplicationArea = All;

                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;

                }
                field(UOM; Rec.UOM)
                {
                    ApplicationArea = All;

                }
                field(Unit_price; Rec.Unit_price)
                {
                    ApplicationArea = All;

                }
                field(Customer_No; Rec.Customer_No)
                {
                    ApplicationArea = All;

                }
                field(Location_Code; Rec.Location_Code)
                {
                    ApplicationArea = All;

                }
                field(Posting_date; Rec.Posting_date)
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