/// <summary>
/// Page RFQ card page (ID 50142).
/// </summary>
page 50142 "RFQ card page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "RFQ Header";
    Caption = 'RFQ header card page ';
    AboutText = 'Card PAge ';
    AboutTitle = 'This Is a card Page ';


    layout
    {
        area(Content)
        {
            group(GeneralDetail)
            {
                field(RFQ_Document_no; Rec.RFQ_Document_no)
                {
                    ApplicationArea = All;

                }
                field(Document_Date; Rec.Document_Date)
                {
                    ApplicationArea = All;

                }
                field(Posting_date; Rec.Posting_date)
                {
                    ApplicationArea = All;

                }
                field(Customer_No; Rec.Customer_No)
                {
                    ApplicationArea = All;

                }
                field(Customer_name; Rec.Customer_name)
                {
                    ApplicationArea = All;

                }
                field(Location_Code; Rec.Location_Code)
                {
                    ApplicationArea = All;

                }

            }
            group(otherdetails)
            {
                part(general; "RFQ subform page")
                {
                    SubPageLink = RFQ_Document_no = field(RFQ_Document_no);
                    ApplicationArea = All;

                }

            }

        }
    }





    actions
    {
        area(Processing)
        {
            action(POST)
            {
                // ApplicationArea = All;
                // RunObject = page 50142;
                // RunPageLink = RFQ_Document_no = field(Customer_No);
                // Image = Relationship;
                // Promoted = true;
                // PromotedCategory = Process;
                // PromotedIsBig = true;




                // trigger OnAction()
                // begin
                //     Message('Data Inserted ');
                // end;
            }
        }
    }

    var
        myInt: Integer;
}