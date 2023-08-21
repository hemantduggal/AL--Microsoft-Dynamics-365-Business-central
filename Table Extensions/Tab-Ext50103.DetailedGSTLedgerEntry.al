/// <summary>
/// TableExtension  (ID 50103).
/// </summary>
tableextension 50103 """Detailed GST Ledger Entry""" extends "Sales Invoice Line"
{
    fields
    {
        field(50100; "G/L entry"; Code[20])
        {
            Caption = 'G/L entry';
            DataClassification = ToBeClassified;
        }
        field(50101; "GST Component Code"; Code[20])
        {
            Caption = 'GST Component Code';
            DataClassification = ToBeClassified;
        }
        field(50102; "GST %"; Decimal)
        {
            Caption = 'GST %';
            DataClassification = ToBeClassified;
        }
        field(50103; "GST Amount"; Decimal)
        {
            Caption = 'GST Amount';
            DataClassification = ToBeClassified;
        }
    }
}
