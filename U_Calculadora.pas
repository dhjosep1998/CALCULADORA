unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm2 = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_6: TButton;
    btn_5: TButton;
    btn_4: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_mais: TButton;
    btn_menos: TButton;
    btn_vezes: TButton;
    btn_dividir: TButton;
    caixa_botoes: TLayout;
    Layout1: TLayout;
    txt_num1: TEdit;
    txt_num2: TEdit;
    lb_operador: TLabel;
    procedure btn_menosClick(Sender: TObject);
    procedure btn_maisClick(Sender: TObject);
    procedure btn_vezesClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btn_dividirClick(Sender: TObject);
begin
 lb_operador.Text := '/';
 btn_menos.Enabled := true;
 btn_mais.Enabled := true;
 btn_dividir.Enabled := false;
 btn_vezes.Enabled := true;
end;


procedure TForm2.btn_igualClick(Sender: TObject);
 var n1, n2 :double;
begin
 n1 := StrToFloat(txt_num1.Text);
 n2 := StrToFloat(txt_num2.Text);

 //efetuando a soma

 if (lb_operador.Text = '+') then
 begin
   ShowMessage(FloatToStr(n1 + n2));
 end;

end;

procedure TForm2.btn_maisClick(Sender: TObject);
begin
 lb_operador.Text := '+';
 btn_menos.Enabled := true;
 btn_mais.Enabled := false;
 btn_dividir.Enabled := true;
 btn_vezes.Enabled := true;
end;

procedure TForm2.btn_menosClick(Sender: TObject);
begin
 lb_operador.Text := '-';
 btn_menos.Enabled := false;
 btn_mais.Enabled := true;
 btn_dividir.Enabled := true;
 btn_vezes.Enabled := true;
end;

procedure TForm2.btn_vezesClick(Sender: TObject);
begin
 lb_operador.Text := '*';
 btn_menos.Enabled := true;
 btn_mais.Enabled := true;
 btn_dividir.Enabled := true;
 btn_vezes.Enabled := false;
end;


end.
