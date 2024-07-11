unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    NIK: TLabel;
    KUSTOMER: TLabel;
    NAMA: TLabel;
    TELP: TLabel;
    EMAIL: TLabel;
    ALAMAT: TLabel;
    MEMBER: TLabel;
    edtNik: TEdit;
    edtNama: TEdit;
    edtTelp: TEdit;
    edtEmail: TEdit;
    edtAlamat: TEdit;
    cmbMember: TDBComboBox;
    DISKON: TLabel;
    I: TLabel;
    lblDiscountValue: TLabel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    dbgrd1: TDBGrid;
    CARI: TLabel;
    edtCari: TEdit;
    btnCetak: TButton;
    procedure btnBaruClick(Sender: TObject);
    procedure posisiawal;
    procedure FormCreate(Sender: TObject);
    procedure cmbMemberChange(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure edtCariChange(Sender: TObject);
   
  private
    { Private declarations }
   

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id: Integer;
  a: string;

implementation

uses data_module;

{$R *.dfm}


procedure TForm1.PosisiAwal;
begin
  // Disable all edit fields
  edtNik.Enabled := False;
  edtNama.Enabled := False;
  edtTelp.Enabled := False;
  edtEmail.Enabled := False;
  edtAlamat.Enabled := False;
  cmbMember.Enabled := False;
  edtCari.Enabled := True;

  // Clear all edit fields
  edtNik.Clear;
  edtNama.Clear;
  edtTelp.Clear;
  edtEmail.Clear;
  edtAlamat.Clear;
  cmbMember.ItemIndex := -1;
  cmbMember.Text := '---PILIH---';


  // Set discount label to empty
  lblDiscountValue.Caption := '-%';

  // Disable all buttons except btnBaru
  btnBaru.Enabled := True;
  btnSimpan.Enabled := False;
  btnEdit.Enabled := False;
  btnHapus.Enabled := False;
  btnBatal.Enabled := False;
  btnCetak.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cmbMember.ItemIndex := 0;
  PosisiAwal;
end;


procedure TForm1.btnBaruClick(Sender: TObject);
begin
  // Clear
  edtNik.Clear;
  edtNama.Clear;
  edtTelp.Clear;
  edtEmail.Clear;
  edtAlamat.Clear;


  // btn
  btnSimpan.Enabled := True;
  btnEdit.Enabled := False;
  btnHapus.Enabled := False;
  btnBatal.Enabled := True;

  //edt
  edtNik.Enabled := True;
  edtNama.Enabled := True;
  edtTelp.Enabled := True;
  edtEmail.Enabled := True;
  edtAlamat.Enabled := True;
  cmbMember.Enabled := True;
end;



procedure TForm1.cmbMemberChange(Sender: TObject);
begin
  if cmbMember.Text = 'Yes' then
    lblDiscountValue.Caption := '10%'
  else
    lblDiscountValue.Caption := '5%';
end;


procedure TForm1.btnBatalClick(Sender: TObject);
begin
  PosisiAwal;
end;

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  if edtNIK.Text = '' then
  begin
    ShowMessage('NIK Tidak Boleh Kosong!');
  end 
  else if edtNama.Text = '' then
  begin
    ShowMessage('Nama Tidak Boleh Kosong!');
  end 
  else
  begin
  with DataModule1.ZKustomer do
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO kustomer (nik, nama, telp, email, alamat, member)');
      SQL.Add('VALUES (:nik, :nama, :telp, :email, :alamat, :member)');

      // Assign parameters
      Params.ParamByName('nik').AsString := edtNIK.Text;
      Params.ParamByName('nama').AsString := edtNama.Text;
      Params.ParamByName('telp').AsString := edtTelp.Text;
      Params.ParamByName('email').AsString := edtEmail.Text;
      Params.ParamByName('alamat').AsString := edtAlamat.Text;
      Params.ParamByName('member').AsString := cmbMember.Text;

      // Execute SQL
      ExecSQL;

      // Refresh data
      SQL.Clear;
      SQL.Add('SELECT * FROM kustomer');
      Open;
    end;
  end;

end;




procedure TForm1.btnEditClick(Sender: TObject);
begin
  if edtNIK.Text = '' then
  begin
    ShowMessage('NIK Tidak Boleh Kosong!');
  end
  else if edtNama.Text = '' then
  begin
    ShowMessage('Nama Tidak Boleh Kosong!');
  end 
  else
  begin
    with DataModule1.ZKustomer do
    begin
      // Update query
      SQL.Text := 'UPDATE kustomer SET nik = :nik, nama = :nama, telp = :telp, email = :email, alamat = :alamat, member = :member WHERE id = :id';
      Params.ParamByName('id').AsInteger := id;

      // Assign parameters
      Params.ParamByName('nik').AsString := edtNIK.Text;
      Params.ParamByName('nama').AsString := edtNama.Text;
      Params.ParamByName('telp').AsString := edtTelp.Text;
      Params.ParamByName('email').AsString := edtEmail.Text;
      Params.ParamByName('alamat').AsString := edtAlamat.Text;
      Params.ParamByName('member').AsString := cmbMember.Text;

      // Execute SQL
      ExecSQL;

      // Refresh data
      SQL.Text := 'SELECT * FROM kustomer';
      Open;
    end;
    ShowMessage('Data Berhasil Diupdate!');
  end;
end;


procedure TForm1.btnHapusClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModule1.ZKustomer do
    begin
      // Delete query
      SQL.Text := 'DELETE FROM kustomer WHERE id = :id';
      Params.ParamByName('id').AsInteger := id;

      // Execute SQL
      ExecSQL;

      // Refresh data
      SQL.Text := 'SELECT * FROM kustomer';
      Open;
    end;
    ShowMessage('Data Berhasil Dihapus!');

    // Clear form fields and reset button
    edtNIK.Clear;
    edtNama.Clear;
    edtTelp.Clear;
    edtEmail.Clear;
    edtAlamat.Clear;
    cmbMember.ItemIndex := -1;
    id := -1; // Reset the ID variable
  end
  else
  begin
    ShowMessage('Data Batal Dihapus!');
  end;
end;


procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  if not DataModule1.ZKustomer.IsEmpty then
  begin
    edtNIK.Text := DataModule1.ZKustomer.FieldByName('nik').AsString;
    edtNama.Text := DataModule1.ZKustomer.FieldByName('nama').AsString;
    edtTelp.Text := DataModule1.ZKustomer.FieldByName('telp').AsString;
    edtEmail.Text := DataModule1.ZKustomer.FieldByName('email').AsString;
    edtAlamat.Text := DataModule1.ZKustomer.FieldByName('alamat').AsString;
    cmbMember.Text := DataModule1.ZKustomer.FieldByName('member').AsString;
    id := DataModule1.ZKustomer.FieldByName('id').AsInteger;

    // Enable and disable appropriate buttons
    btnBaru.Enabled := False;
    btnSimpan.Enabled := False;
    btnEdit.Enabled := True;
    btnHapus.Enabled := True;
    btnBatal.Enabled := True;
  end;
end;



procedure TForm1.edtCariChange(Sender: TObject);
begin
with DataModule1.ZKustomer do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM kustomer WHERE nama like "%'+edtCari.Text+'%"');
    Open;
  end;
end;

end.
