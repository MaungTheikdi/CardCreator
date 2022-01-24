using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Windows.Forms;
//using ZXing;
//using ZXing.Common;
//using ZXing.QrCode.Internal;
//using ZXing.Rendering;
//using IronBarCode;
using Zen.Barcode;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.ComponentModel;
using ZXing.QrCode.Internal;
using ZXing;
using ZXing.Rendering;


// DatagridView 2 for Excel

namespace DRDQR
{
    public partial class main : Form
    {
        MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=rootb;password=toor");
        //MySqlCommand command;
        //MySqlDataReader mdr;

        ConnectionDB con = new ConnectionDB();
        //arraylist to getter and setter data  
        private static ArrayList ListID = new ArrayList();
        private static ArrayList ListSrNo = new ArrayList();
        private static ArrayList ListAddressMm = new ArrayList();
        private static ArrayList ListAddressEn = new ArrayList();
        private static ArrayList ListDRDEn = new ArrayList();
        private static ArrayList ListDRDMm = new ArrayList();
        private static ArrayList ListNameEn = new ArrayList();
        private static ArrayList ListNameMm = new ArrayList();
        private static ArrayList ListPosEn = new ArrayList();
        private static ArrayList ListPosMm = new ArrayList();
        private static ArrayList ListLocationEn = new ArrayList();
        private static ArrayList ListLocationMm = new ArrayList();
        private static ArrayList ListN = new ArrayList();
        private static ArrayList ListNrcMm = new ArrayList();
        private static ArrayList ListDobRaw = new ArrayList();
        private static ArrayList ListDobEn = new ArrayList();
        private static ArrayList ListDobMm = new ArrayList();
        private static ArrayList ListFatherNameEn = new ArrayList();
        private static ArrayList ListFatherNameMm = new ArrayList();
        private static ArrayList ListPhotoWindow = new ArrayList();
        private static ArrayList ListPhoto = new ArrayList();
        private static ArrayList ListIssueEn = new ArrayList();
        private static ArrayList ListIssueMm = new ArrayList();
        private static ArrayList ListDuty = new ArrayList();
        private static ArrayList ListS = new ArrayList();
        private static ArrayList ListC = new ArrayList();

        //static Calendar cal = new GregorianCalendar();


        // End
        public main()
        {
            InitializeComponent();


            labelBackNo(nameMyan);
            labelBackNo(postMyan);
            labelBackNo(fatherName);
            labelBackNo(nrcMyan);
            labelBackNo(bodMyan);

            labelBackNoCardBack(cardSrNo);
            labelBackNoCardBack(addressMyan);
            labelBackNoCardBack(issuedDate);

            pictureBoxCombine(pictureBoxQR);

            //drawRotatedText(30, 170, 170, cardSrNo);

            //this.panelCard.MouseWheel += PanelCard_MouseWheel;

            //pictureBoxFront.Width = pictureBoxFront.Width/2;
            //pictureBoxFront.Height = pictureBoxFront.Height/2;

        }
        /*
        private void PanelCard_MouseWheel(object sender, MouseEventArgs e)
        {
            if (e.Delta > 0)
            {
                pictureBoxFront.Width = pictureBoxFront.Width * 2;
                pictureBoxFront.Height = pictureBoxFront.Height * 2;

            }
            else
            {
                pictureBoxFront.Width = pictureBoxFront.Width / 2;
                pictureBoxFront.Height = pictureBoxFront.Height / 2;
            }
        }
        */

        private void main_Load(object sender, EventArgs e)
        {
            //refreshData.Hide();
            //showPanleLeft.Hide();


            //Loag Image
            //Bitmap bmp = new Bitmap(cropPictureBox.Image); //cropPictureBox ""
            //cropPictureBox.SizeMode = PictureBoxSizeMode.StretchImage;
            //cropPictureBox.Image = (Image)bmp;


            //GetData();
            //updateDatagrid();
            UpdateLabelText();
            pictureBoxBack.AllowDrop = true;
            pictureBoxFront.AllowDrop = true;


            Theikdi theikdi = new Theikdi();
            theikdi.LabelMove(nameMyan);
            theikdi.LabelMove(postMyan);
            theikdi.LabelMove(fatherName);
            theikdi.LabelMove(nrcMyan);
            theikdi.LabelMove(bodMyan);

            theikdi.LabelMove(issuedDate);
            theikdi.LabelMove(cardSrNo);
            theikdi.LabelMove(addressMyan);

            theikdi.PictureMove(profilePic);
            theikdi.PictureMove(pictureBoxBarcode);
            theikdi.PictureMove(pictureBoxQR);
        }

        private void QRCode()
        {
            string myUrl = "https://"+qr_prefit_combo.Text+"/detail.php?n="+ nrcEng.Text + "&s=1&" + "c=" + cardSrNo.Text; 
            Zen.Barcode.CodeQrBarcodeDraw codeQr = new Zen.Barcode.CodeQrBarcodeDraw();            
            pictureBoxQR.Image = codeQr.Draw(myUrl, 156);
        }
        private void BARCode()
        {
            
            ZXing.BarcodeWriter barcodeWriter = new ZXing.BarcodeWriter();
            ZXing.Common.EncodingOptions encodingOptions = new ZXing.Common.EncodingOptions() { Width = 735, Height = 124, Margin = 0, PureBarcode = true }; //691, 113 735, 124
            encodingOptions.Hints.Add(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
            barcodeWriter.Renderer = new BitmapRenderer();
            barcodeWriter.Options = encodingOptions;
            barcodeWriter.Format = BarcodeFormat.PDF_417;
            //string drd = "DRD";
            Bitmap bitmap = barcodeWriter.Write(idEng.Text + textBoxBarCode.Text);
            Graphics g = Graphics.FromImage(bitmap);
            pictureBoxBarcode.Image = bitmap;
            


        }

        //Database and Grid View
        private void GetData()
        {
            try
            {
                con.Open();
                string query = "SELECT * FROM `"+mysql_combo.Text+"` WHERE `ID` BETWEEN "+tb_start_id.Text+" AND "+tb_end_id.Text+"";
                //MySqlDataReader row;  
                MySqlDataReader row;
                row = con.ExecuteReader(query);
                if (row.HasRows)
                {
                    while (row.Read())
                    {
                        ListID.Add(row["ID"].ToString());
                        ListSrNo.Add(row["SRNO"].ToString());
                        ListAddressMm.Add(row["ADDRESSMM"].ToString());
                        ListAddressEn.Add(row["ADDRESSEN"].ToString());
                        ListDRDEn.Add(row["DRDIDEN"].ToString());
                        ListDRDMm.Add(row["DRDIDMM"].ToString());
                        ListNameEn.Add(row["NAMEEN"].ToString());
                        ListNameMm.Add(row["NAMEMM"].ToString());
                        ListPosEn.Add(row["POSTEN"].ToString());
                        ListPosMm.Add(row["POSTMM"].ToString());
                        ListLocationEn.Add(row["LOCATIONEN"].ToString());
                        ListLocationMm.Add(row["LOCATIONMM"].ToString());
                        ListN.Add(row["n"].ToString());
                        ListNrcMm.Add(row["NRCMM"].ToString());
                        ListDobRaw.Add(row["DOBMMRAW"].ToString());
                        ListDobEn.Add(row["DOBEN"].ToString());
                        ListDobMm.Add(row["DOBMM"].ToString());

                        ListFatherNameEn.Add(row["FATHERNAMEEN"].ToString());
                        ListFatherNameMm.Add(row["FATHERNAMEMM"].ToString());
                        ListPhotoWindow.Add(row["PHOTO"].ToString());
                        //ListPhoto.Add(row["PHOTOWEB"].ToString());
                        ListPhoto.Add("http://10.36.2.117/drdstaffid.info/" + row["PHOTOWEB"].ToString());
                        ListIssueEn.Add(row["ISSUEDDATEEN"].ToString());
                        ListIssueMm.Add(row["ISSUEDDATEMM"].ToString());

                        ListDuty.Add(row["DUTY"].ToString());
                        ListS.Add(row["s"].ToString());
                        ListC.Add(row["c"].ToString());

                    }
                }
                else
                {
                    MessageBox.Show("Data not found");
                }

                con.Close();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.ToString());
            }
        }

        private void updateDatagrid()
        {
            // dataGridView1 for mysql and dataGridView2 for excel
            dataGridView1.Rows.Clear();
            for (int i = 0; i < ListDRDEn.Count; i++)
            {
                DataGridViewRow newRow = new DataGridViewRow();

                newRow.CreateCells(dataGridView1);
                newRow.Cells[0].Value = ListID[i];
                newRow.Cells[1].Value = ListSrNo[i];
                newRow.Cells[2].Value = ListAddressMm[i];
                newRow.Cells[3].Value = ListAddressEn[i];
                newRow.Cells[4].Value = ListDRDEn[i];
                newRow.Cells[5].Value = ListDRDMm[i];
                newRow.Cells[6].Value = ListNameEn[i];
                newRow.Cells[7].Value = ListNameMm[i];
                newRow.Cells[8].Value = ListPosEn[i];
                newRow.Cells[9].Value = ListPosMm[i];
                newRow.Cells[10].Value = ListLocationEn[i];
                newRow.Cells[11].Value = ListLocationMm[i];
                newRow.Cells[12].Value = ListN[i];
                newRow.Cells[13].Value = ListNrcMm[i];
                newRow.Cells[14].Value = ListDobRaw[i];
                newRow.Cells[15].Value = ListDobEn[i];
                newRow.Cells[16].Value = ListDobMm[i];
                newRow.Cells[17].Value = ListFatherNameEn[i];
                newRow.Cells[18].Value = ListFatherNameMm[i];
                newRow.Cells[19].Value = ListPhotoWindow[i];
                newRow.Cells[20].Value = ListPhoto[i];
                newRow.Cells[21].Value = ListIssueEn[i];
                newRow.Cells[22].Value = ListIssueMm[i];
                newRow.Cells[23].Value = ListDuty[i];
                newRow.Cells[24].Value = ListS[i];
                newRow.Cells[25].Value = ListC[i];

                dataGridView1.Rows.Add(newRow);
            }
        }
        Font smallFont = new Font("Pyidaungsu", 18, FontStyle.Bold);
        Font normalFont = new Font("Pyidaungsu", 22, FontStyle.Bold);
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                dataGridView1.CurrentRow.Selected = true;

                nameMyan.Text = dataGridView1.Rows[e.RowIndex].Cells["NAMEMM"].FormattedValue.ToString();
                postMyan.Text = dataGridView1.Rows[e.RowIndex].Cells["POSTMM"].FormattedValue.ToString();
                fatherName.Text = dataGridView1.Rows[e.RowIndex].Cells["FATHERNAMEMM"].FormattedValue.ToString();
                nrcMyan.Text = dataGridView1.Rows[e.RowIndex].Cells["NRCMM"].FormattedValue.ToString();
                bodMyan.Text = dataGridView1.Rows[e.RowIndex].Cells["DOBMM"].FormattedValue.ToString();

                profilePic.Load(dataGridView1.Rows[e.RowIndex].Cells["PHOTOWEB"].FormattedValue.ToString());
                cropPictureBox.Load(dataGridView1.Rows[e.RowIndex].Cells["PHOTOWEB"].FormattedValue.ToString());

                addressMyan.Text = dataGridView1.Rows[e.RowIndex].Cells["ADDRESSMM"].FormattedValue.ToString();
                cardSrNo.Text = dataGridView1.Rows[e.RowIndex].Cells["c"].FormattedValue.ToString();
                issuedDate.Text = dataGridView1.Rows[e.RowIndex].Cells["ISSUEDDATEMM"].FormattedValue.ToString();

                idEng.Text = dataGridView1.Rows[e.RowIndex].Cells["DRDIDEN"].FormattedValue.ToString();
                nameEng.Text = dataGridView1.Rows[e.RowIndex].Cells["NAMEEN"].FormattedValue.ToString();
                nrcEng.Text = dataGridView1.Rows[e.RowIndex].Cells["n"].FormattedValue.ToString();

                if(postMyan.Text.Length > 28)
                {
                    
                    postMyan.Font = smallFont;
                }
                else
                {
                    
                    postMyan.Font = normalFont;
                }

                textBoxBarCode.Text = " " + dataGridView1.Rows[e.RowIndex].Cells["NAMEEN"].FormattedValue.ToString() + " " + dataGridView1.Rows[e.RowIndex].Cells["n"].FormattedValue.ToString();


                string myUrl = "https://"+qr_prefit_combo.Text+"/detail.php?n=" + nrcEng.Text + "&s=1&" + "c=" + cardSrNo.Text;
                Zen.Barcode.CodeQrBarcodeDraw codeQr = new Zen.Barcode.CodeQrBarcodeDraw();
                pictureBoxQR.Image = codeQr.Draw(myUrl, 156);


                ZXing.BarcodeWriter barcodeWriter = new ZXing.BarcodeWriter();
                ZXing.Common.EncodingOptions encodingOptions = new ZXing.Common.EncodingOptions() { Width = 735, Height = 124, Margin = 0, PureBarcode = true }; //691, 113 735, 124
                encodingOptions.Hints.Add(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
                barcodeWriter.Renderer = new BitmapRenderer();
                barcodeWriter.Options = encodingOptions;
                barcodeWriter.Format = BarcodeFormat.PDF_417;
                //string drd = "DRD";
                Bitmap bitmap = barcodeWriter.Write(idEng.Text + textBoxBarCode.Text);
                Graphics g = Graphics.FromImage(bitmap);
                pictureBoxBarcode.Image = bitmap;


            }
            else
            {
                MessageBox.Show("မမှန်ကန်သော ရွေးချယ်မှု ဖြစ်ပါသည်..");
            }
        }

        private void selectDataGridNextRowExcel()
        {
            // Ref dataGridView2_CellClick
            if (dataGridView2.Rows.Count >= 1)
            {
                int i = dataGridView2.CurrentRow.Index;
                if (i >= -1 && i < dataGridView2.Rows.Count)
                {
                    dataGridView2.CurrentCell = dataGridView2.Rows[i].Cells[0];

                    dataGridView2.CurrentRow.Selected = true;

                    nameMyan.Text = dataGridView2.Rows[i + 1].Cells["NAMEMM"].FormattedValue.ToString();
                    postMyan.Text = dataGridView2.Rows[i + 1].Cells["POSTMM"].FormattedValue.ToString();
                    fatherName.Text = dataGridView2.Rows[i + 1].Cells["FATHERNAMEMM"].FormattedValue.ToString();
                    nrcMyan.Text = dataGridView2.Rows[i + 1].Cells["NRCMM"].FormattedValue.ToString();
                    bodMyan.Text = dataGridView2.Rows[i + 1].Cells["DOBMM"].FormattedValue.ToString();

                    profilePic.Load(dataGridView2.Rows[i + 1].Cells["PHOTO"].FormattedValue.ToString());
                    cropPictureBox.Load(dataGridView2.Rows[i + 1].Cells["PHOTO"].FormattedValue.ToString());

                    addressMyan.Text = dataGridView2.Rows[i + 1].Cells["ADDRESSMM"].FormattedValue.ToString();
                    cardSrNo.Text = dataGridView2.Rows[i + 1].Cells["c"].FormattedValue.ToString();
                    issuedDate.Text = dataGridView2.Rows[i + 1].Cells["ISSUEDDATEMM"].FormattedValue.ToString();
                    //
                    //drawRotatedText(30, 170, 170, cardSrNo);
                    //pr_picturebox_refresh();
                    //
                    idEng.Text = dataGridView2.Rows[i + 1].Cells["DRDIDEN"].FormattedValue.ToString();
                    nameEng.Text = dataGridView2.Rows[i + 1].Cells["NAMEEN"].FormattedValue.ToString();
                    nrcEng.Text = dataGridView2.Rows[i + 1].Cells["n"].FormattedValue.ToString();

                    textBoxBarCode.Text =
                        dataGridView2.Rows[i + 1].Cells["NAMEEN"].FormattedValue.ToString()
                        +
                        dataGridView2.Rows[i + 1].Cells["n"].FormattedValue.ToString();
                    
                }

            }
        }
        private void selectDataGridNextRowMysql()
        {
            // Ref dataGridView2_CellClick
            if (dataGridView1.Rows.Count >= 1)
            {
                int i = dataGridView1.CurrentRow.Index;
                if (i >= -1 && i < dataGridView1.Rows.Count)
                {
                    dataGridView1.CurrentCell = dataGridView1.Rows[i].Cells[0];

                    dataGridView1.CurrentRow.Selected = true;

                    nameMyan.Text = dataGridView1.Rows[i + 1].Cells["NAMEMM"].FormattedValue.ToString();
                    postMyan.Text = dataGridView1.Rows[i + 1].Cells["POSTMM"].FormattedValue.ToString();
                    fatherName.Text = dataGridView1.Rows[i + 1].Cells["FATHERNAMEMM"].FormattedValue.ToString();
                    nrcMyan.Text = dataGridView1.Rows[i + 1].Cells["NRCMM"].FormattedValue.ToString();
                    bodMyan.Text = dataGridView1.Rows[i + 1].Cells["DOBMM"].FormattedValue.ToString();

                    profilePic.Load(dataGridView1.Rows[i + 1].Cells["PHOTOWEB"].FormattedValue.ToString());
                    cropPictureBox.Load(dataGridView1.Rows[i + 1].Cells["PHOTOWEB"].FormattedValue.ToString());

                    addressMyan.Text = dataGridView1.Rows[i + 1].Cells["ADDRESSMM"].FormattedValue.ToString();
                    cardSrNo.Text = dataGridView1.Rows[i + 1].Cells["c"].FormattedValue.ToString();
                    issuedDate.Text = dataGridView1.Rows[i + 1].Cells["ISSUEDDATEMM"].FormattedValue.ToString();
                    //
                    //drawRotatedText(30, 170, 170, cardSrNo);
                    //pr_picturebox_refresh();
                    //
                    idEng.Text = dataGridView1.Rows[i + 1].Cells["DRDIDEN"].FormattedValue.ToString();
                    nameEng.Text = dataGridView1.Rows[i + 1].Cells["NAMEEN"].FormattedValue.ToString();
                    nrcEng.Text = dataGridView1.Rows[i + 1].Cells["n"].FormattedValue.ToString();

                    textBoxBarCode.Text =
                        dataGridView1.Rows[i + 1].Cells["NAMEEN"].FormattedValue.ToString()
                        +
                        dataGridView1.Rows[i + 1].Cells["n"].FormattedValue.ToString();

                }

            }
        }


        private void UpdateLabelText()
        {
            labelTotalRow.Text = "Total Entries : " + (dataGridView2.RowCount - 1).ToString();//dataGridView1.RowCount.ToString();
        }

        // Drag Drop Picture Back
        private void pictureBoxFront_DragDrop(object sender, DragEventArgs e)
        {
            var data = e.Data.GetData(DataFormats.FileDrop);
            if (data != null)
            {
                var fileNames = data as string[];
                if (fileNames.Length > 0)
                    pictureBoxFront.Image = Image.FromFile(fileNames[0]);
            }
        }

        private void pictureBoxFront_DragEnter(object sender, DragEventArgs e)
        {
            e.Effect = DragDropEffects.Copy;
        }
        private void pictureBoxBack_DragDrop(object sender, DragEventArgs e)
        {
            var data = e.Data.GetData(DataFormats.FileDrop);
            if (data != null)
            {
                var fileNames = data as string[];
                if (fileNames.Length > 0)
                    pictureBoxBack.Image = Image.FromFile(fileNames[0]);
            }

        }

        private void pictureBoxBack_DragEnter(object sender, DragEventArgs e)
        {
            e.Effect = DragDropEffects.Copy;
        }
        // Theikdi Maung Link
        /*
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            linkLabel1.LinkVisited = true;
            linkLabel1.Name = "Click Here To Read PDF";
            Process.Start(@"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe", linkLabel1.Text);
        }
        */
        // Shortcut Key
        
        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if(keyData == Keys.Down)
            {
                selectDataGridNextRowExcel();
                return true;
            }

            return base.ProcessCmdKey(ref msg, keyData);
        }
        


        // Class

        private void labelBackNo(Label label)
        {
            // TEXT TRANSPRACNE COLOR
            var pos = this.PointToScreen(label.Location);
            pos = pictureBoxFront.PointToClient(pos);
            label.Parent = pictureBoxFront;
            label.Location = pos;
            label.BackColor = Color.Transparent;
        }

        private void labelBackNoCardBack(Label label)
        {
            var pos = this.PointToScreen(label.Location);
            pos = pictureBoxBack.PointToClient(pos);
            label.Parent = pictureBoxBack;
            label.Location = pos;
            label.BackColor = Color.Transparent;
        }
        private void pictureBoxCombine(PictureBox picture)
        {
            var pos = this.PointToScreen(picture.Location);
            pos = pictureBoxBack.PointToClient(pos);
            picture.Parent = pictureBoxBack;
            picture.Location = pos;
            picture.BackColor = Color.Transparent;
        }

        private void qrsaveWithDialog()
        {
            saveFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            saveFileDialog1.FileName = idEng.Text + "qr";
            saveFileDialog1.Filter = "PNG|*.png";
            if (saveFileDialog1.ShowDialog() != DialogResult.Cancel)
            {
                string savePath = saveFileDialog1.FileName;
                pictureBoxQR.Image.Save(savePath, ImageFormat.Jpeg);
            }
        }

        private void barcodesaveWithDialog()
        {
            saveFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            saveFileDialog1.FileName = idEng.Text;
            saveFileDialog1.Filter = "PNG|*.png";
            if (saveFileDialog1.ShowDialog() != DialogResult.Cancel)
            {
                string savePath = saveFileDialog1.FileName;
                pictureBoxBarcode.Image.Save(savePath, ImageFormat.Jpeg);
            }
        }

        private void qrAndbarcodesaveAuto()
        {
            string folderPath1 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            string folderPath2 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);

            string fileName1 = idEng.Text + "qr.png";
            folderPath1 = System.IO.Path.Combine(folderPath1, fileName1);
            pictureBoxBarcode.Image.Save(folderPath1, ImageFormat.Png);

            string fileName2 = idEng.Text + "bar.png";
            folderPath2 = System.IO.Path.Combine(folderPath2, fileName2);
            pictureBoxQR.Image.Save(folderPath2, ImageFormat.Png);

        }
        private void button1_Click(object sender, EventArgs e)
        {
            uploadExcelBtn();
            UpdateLabelText();
        }
        // Class
        private void uploadExcelBtn()
        {
            
            string file = ""; //variable for the Excel File Location
            DataTable dt = new DataTable(); //container for our excel data
            DataRow row;
            DialogResult result = openFileExcel.ShowDialog(); // Show the dialog.
            if (result == DialogResult.OK) // Check if Result == "OK".
            {
                file = openFileExcel.FileName; //get the filename with the location of the file
                try
                {
                    //Create Object for Microsoft.Office.Interop.Excel that will be use to read excel file

                    Microsoft.Office.Interop.Excel.Application excelApp = new Microsoft.Office.Interop.Excel.Application();

                    Microsoft.Office.Interop.Excel.Workbook excelWorkbook = excelApp.Workbooks.Open(file);

                    Microsoft.Office.Interop.Excel._Worksheet excelWorksheet = excelWorkbook.Sheets[1];

                    Microsoft.Office.Interop.Excel.Range excelRange = excelWorksheet.UsedRange;

                    int rowCount = excelRange.Rows.Count; //get row count of excel data

                    int colCount = excelRange.Columns.Count; // get column count of excel data

                    //Get the first Column of excel file which is the Column Name

                    for (int i = 1; i <= rowCount; i++)
                    {
                        for (int j = 1; j <= colCount; j++)
                        {
                            dt.Columns.Add(excelRange.Cells[i, j].Value2.ToString());
                        }
                        break;
                    }

                    //Get Row Data of Excel

                    int rowCounter; //This variable is used for row index number
                    for (int i = 2; i <= rowCount; i++) //Loop for available row of excel data
                    {
                        row = dt.NewRow(); //assign new row to DataTable
                        rowCounter = 0;
                        for (int j = 1; j <= colCount; j++) //Loop for available column of excel data
                        {
                            //check if cell is empty
                            if (excelRange.Cells[i, j] != null && excelRange.Cells[i, j].Value2 != null)
                            {
                                row[rowCounter] = excelRange.Cells[i, j].Value2.ToString();
                            }
                            else
                            {
                                row[i] = "";
                            }
                            rowCounter++;
                        }
                        dt.Rows.Add(row); //add row to DataTable
                    }

                    dataGridView2.DataSource = dt; //assign DataTable as Datasource for DataGridview

                    //close and clean excel process
                    GC.Collect();
                    GC.WaitForPendingFinalizers();
                    Marshal.ReleaseComObject(excelRange);
                    Marshal.ReleaseComObject(excelWorksheet);
                    //quit apps
                    excelWorkbook.Close();
                    Marshal.ReleaseComObject(excelWorkbook);
                    excelApp.Quit();
                    Marshal.ReleaseComObject(excelApp);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            
        }
        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView2.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                dataGridView2.CurrentRow.Selected = true;

                //SRNO PHOTO DRDIDMM DRDIDEN NAMEMM NAMEEN POSTMM POSTEN LOCATIONMM LOCATIONEN
                //FATHERNAMEMM FATHERNAMEEN NRCMM NRCEN DOBMM DOBEN ADDRESSMM ADDRESSEN STATUS CARDCODE                

                nameMyan.Text = dataGridView2.Rows[e.RowIndex].Cells["NAMEMM"].FormattedValue.ToString();
                postMyan.Text = dataGridView2.Rows[e.RowIndex].Cells["POSTMM"].FormattedValue.ToString();
                fatherName.Text = dataGridView2.Rows[e.RowIndex].Cells["FATHERNAMEMM"].FormattedValue.ToString();
                nrcMyan.Text = dataGridView2.Rows[e.RowIndex].Cells["NRCMM"].FormattedValue.ToString();
                bodMyan.Text = dataGridView2.Rows[e.RowIndex].Cells["DOBMM"].FormattedValue.ToString();

                profilePic.Load(dataGridView2.Rows[e.RowIndex].Cells["PHOTO"].FormattedValue.ToString());
                cropPictureBox.Load(dataGridView2.Rows[e.RowIndex].Cells["PHOTO"].FormattedValue.ToString());

                addressMyan.Text = dataGridView2.Rows[e.RowIndex].Cells["ADDRESSMM"].FormattedValue.ToString();
                cardSrNo.Text = dataGridView2.Rows[e.RowIndex].Cells["c"].FormattedValue.ToString();
                issuedDate.Text = dataGridView2.Rows[e.RowIndex].Cells["ISSUEDDATEMM"].FormattedValue.ToString();
                //
                //drawRotatedText(30, 170, 170, cardSrNo);
                //pr_picturebox_refresh();
                //
                idEng.Text = dataGridView2.Rows[e.RowIndex].Cells["DRDIDEN"].FormattedValue.ToString();
                nameEng.Text = dataGridView2.Rows[e.RowIndex].Cells["NAMEEN"].FormattedValue.ToString();
                nrcEng.Text = dataGridView2.Rows[e.RowIndex].Cells["n"].FormattedValue.ToString();

                textBoxBarCode.Text = " " + dataGridView2.Rows[e.RowIndex].Cells["NAMEEN"].FormattedValue.ToString() + " " + dataGridView2.Rows[e.RowIndex].Cells["n"].FormattedValue.ToString();
            }
            else
            {
                MessageBox.Show("မမှန်ကန်သော ရွေးချယ်မှု ဖြစ်ပါသည်..");
            }
        }


        private void cardFsaveWithDialog()
        {
            saveFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            saveFileDialog1.FileName = "F"+idEng.Text;
            saveFileDialog1.Filter = "JPEG|*.jpeg";
            if (saveFileDialog1.ShowDialog() != DialogResult.Cancel)
            {
                string savePath = saveFileDialog1.FileName;

                //Bitmap bmp = new Bitmap(pictureBoxFront.Width, pictureBoxFront.Height);
                //pictureBoxFront.DrawToBitmap(bmp, new Rectangle(0, 0, pictureBoxFront.Width, pictureBoxFront.Height));
                /*
                 * profilePic.DrawToBitmap(bmp,
                    new Rectangle(profilePic.Location.X - pictureBoxFront.Location.X,
                    profilePic.Location.Y - pictureBoxFront.Location.Y,
                    profilePic.Width,
                    profilePic.Height));
                */


                Bitmap bmp = new Bitmap(1014, 639);
                pictureBoxFront.DrawToBitmap(bmp, new Rectangle(3, 3, 1014, 639));
                profilePic.DrawToBitmap(bmp, new Rectangle(profilePic.Location.X - pictureBoxFront.Location.X, profilePic.Location.Y - pictureBoxFront.Location.Y, 1014, 639));

                //Bitmap bitmap = new Bitmap(100, 100);
                bmp.SetResolution(300.0F, 300.0F); //96
                bmp.Save(savePath, ImageFormat.Jpeg);
                bmp.Dispose();

            }
        }
        private void cardBsaveWithDialog()
        {
            saveFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            saveFileDialog1.FileName = "B"+idEng.Text;
            saveFileDialog1.Filter = "JPEG|*.jpeg";
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                string savePath = saveFileDialog1.FileName;
                /*Bitmap bmp = new Bitmap(pictureBoxBack.Width, pictureBoxBack.Height);
                
                pictureBoxBack.DrawToBitmap(bmp, new Rectangle(0,0,pictureBoxBack.Width, pictureBoxBack.Height));
                
                pictureBoxBarcode.DrawToBitmap(bmp,
                    new Rectangle(pictureBoxBarcode.Location.X - pictureBoxBack.Location.X,
                    pictureBoxBarcode.Location.Y - pictureBoxBack.Location.Y,
                    pictureBoxBarcode.Width,
                    pictureBoxBarcode.Height));
                
                pictureBoxQR.DrawToBitmap(bmp,
                    new Rectangle(pictureBoxQR.Location.X - pictureBoxBack.Location.X,
                    pictureBoxQR.Location.Y - pictureBoxBack.Location.Y,
                    pictureBoxQR.Width,
                    pictureBoxQR.Height));
                */
                Bitmap bmp = new Bitmap(1014, 639);
                pictureBoxBack.DrawToBitmap(bmp, new Rectangle(3, 3, 1014, 639));
                pictureBoxBarcode.DrawToBitmap(bmp, new Rectangle(pictureBoxBarcode.Location.X - pictureBoxBack.Location.X, pictureBoxBarcode.Location.Y - pictureBoxBack.Location.Y, 1014, 639));

                //Bitmap bitmap = new Bitmap(100, 100);
                bmp.SetResolution(300.0F, 300.0F); //96
                bmp.Save(savePath, ImageFormat.Jpeg);
                bmp.Dispose();

            }
        }
        
        private void twoCardAutoSave()
        {
            /*
            string folderPath1 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            string fileName1 = idEng.Text + "cardf.jpeg";
            folderPath1 = System.IO.Path.Combine(folderPath1, fileName1);

            Bitmap bmp = new Bitmap(pictureBoxFront.Width, pictureBoxFront.Height);
            pictureBoxFront.DrawToBitmap(bmp, new Rectangle(0, 0, pictureBoxFront.Width, pictureBoxFront.Height));
            profilePic.DrawToBitmap(bmp,
                new Rectangle(profilePic.Location.X - pictureBoxFront.Location.X,
                profilePic.Location.Y - pictureBoxFront.Location.Y,
                profilePic.Width,
                profilePic.Height));

            bmp.SetResolution(300.0F, 300.0F); //96
            bmp.Save(folderPath1, ImageFormat.Jpeg);

            //pictureBoxBarcode.Image.Save(folderPath1, ImageFormat.Jpeg);



            string folderPath2 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            string fileName2 = idEng.Text + "cardb.jpeg";
            folderPath2 = System.IO.Path.Combine(folderPath2, fileName2);

            //string savePath = saveFileDialog1.FileName;
            Bitmap bmp2 = new Bitmap(pictureBoxBack.Width, pictureBoxBack.Height);

            pictureBoxBack.DrawToBitmap(bmp2, new Rectangle(0, 0, pictureBoxBack.Width, pictureBoxBack.Height));

            pictureBoxBarcode.DrawToBitmap(bmp2,
                new Rectangle(pictureBoxBarcode.Location.X - pictureBoxBack.Location.X,
                pictureBoxBarcode.Location.Y - pictureBoxBack.Location.Y,
                pictureBoxBarcode.Width,
                pictureBoxBarcode.Height));

            pictureBoxQR.DrawToBitmap(bmp2,
                new Rectangle(pictureBoxQR.Location.X - pictureBoxBack.Location.X,
                pictureBoxQR.Location.Y - pictureBoxBack.Location.Y,
                pictureBoxQR.Width,
                pictureBoxQR.Height));

            

            bmp2.SetResolution(300.0F, 300.0F); //96

            bmp2.Save(folderPath2, ImageFormat.Jpeg);

            //pictureBoxBarcode.Image.Save(folderPath2, ImageFormat.Jpeg);
            */
            string folderPath1 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            string fileName1 = idEng.Text + "cardf.jpeg";
            folderPath1 = System.IO.Path.Combine(folderPath1, fileName1);


            string folderPath2 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            string fileName2 = idEng.Text + "cardb.jpeg";
            folderPath2 = System.IO.Path.Combine(folderPath2, fileName2);



            Bitmap bmpa = new Bitmap(1014, 639);
            pictureBoxFront.DrawToBitmap(bmpa, new Rectangle(3, 3, 1014, 639));
            profilePic.DrawToBitmap(bmpa, new Rectangle(profilePic.Location.X - pictureBoxFront.Location.X, profilePic.Location.Y - pictureBoxFront.Location.Y, 1014, 639));

            //Bitmap bitmap = new Bitmap(100, 100);
            bmpa.SetResolution(300.0F, 300.0F); //96
            bmpa.Save(folderPath1, ImageFormat.Jpeg);
            bmpa.Dispose();



            Bitmap bmpb = new Bitmap(1014, 639);
            pictureBoxBack.DrawToBitmap(bmpb, new Rectangle(3, 3, 1014, 639));
            pictureBoxBarcode.DrawToBitmap(bmpb, new Rectangle(pictureBoxBarcode.Location.X - pictureBoxBack.Location.X, pictureBoxBarcode.Location.Y - pictureBoxBack.Location.Y, 1014, 639));

            //Bitmap bitmap = new Bitmap(100, 100);
            bmpb.SetResolution(300.0F, 300.0F); //96
            bmpb.Save(folderPath2, ImageFormat.Jpeg);
            bmpb.Dispose();
        }
        // Menu
        private void qRထတToolStripMenuItem_Click(object sender, EventArgs e)
        {
            QRCode();
            BARCode();
        }

        private void သမမညToolStripMenuItem_Click(object sender, EventArgs e)
        {
            qrAndbarcodesaveAuto();
        }

        private void qRထတToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            QRCode();
        }

        private void qRသမToolStripMenuItem_Click(object sender, EventArgs e)
        {
            qrsaveWithDialog();
        }

        private void barcodeထတToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BARCode();
        }

        private void barcodeသမToolStripMenuItem_Click(object sender, EventArgs e)
        {
            barcodesaveWithDialog();
        }

        private void cardထတToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //ကဂ်ရှေ့သိမ်း
            cardFsaveWithDialog();
        }

        private void cardသမToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //ကဓ် နောက်သိမ်း
            cardBsaveWithDialog();
        }

        private void cardရနကသမToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //ကဒ် ၂ခု သိမ်း
            twoCardAutoSave();
        }


        List<Bitmap> bmps;
        int index = 0;
        private void imprimir()
        {
            bmps = new List<Bitmap>();


            Bitmap bmpa = new Bitmap(pictureBoxFront.Width, pictureBoxFront.Height);
            pictureBoxFront.DrawToBitmap(bmpa, new Rectangle(0, 0, pictureBoxFront.Width, pictureBoxFront.Height));
            profilePic.DrawToBitmap(bmpa,
                new Rectangle(profilePic.Location.X - pictureBoxFront.Location.X,
                profilePic.Location.Y - pictureBoxFront.Location.Y,
                profilePic.Width,
                profilePic.Height));

            bmpa.SetResolution(300.0F, 300.0F); //96
            //bmp.Save(folderPath1, ImageFormat.Jpeg);
            Image a = bmpa;
            

            Bitmap bmpb = new Bitmap(pictureBoxBack.Width, pictureBoxBack.Height);
            pictureBoxBack.DrawToBitmap(bmpb, new Rectangle(0, 0, pictureBoxBack.Width, pictureBoxBack.Height));
            
            pictureBoxBarcode.DrawToBitmap(bmpb, new Rectangle(pictureBoxBarcode.Location.X - pictureBoxBack.Location.X,
                pictureBoxBarcode.Location.Y - pictureBoxBack.Location.Y,
                pictureBoxBarcode.Width,
                pictureBoxBarcode.Height));

            pictureBoxQR.DrawToBitmap(bmpb, new Rectangle(879, 1137,//pictureBoxQR.Location.X - pictureBoxBack.Location.X,
                //pictureBoxQR.Location.Y - pictureBoxBack.Location.Y,
                pictureBoxQR.Width,
                pictureBoxQR.Height));
            bmpb.SetResolution(300.0F, 300.0F);
            Image b = bmpb;


            bmps.Add(new Bitmap(a));
            bmps.Add(new Bitmap(b));


            PrintDocument pd = new PrintDocument();
            pd.PrinterSettings.DefaultPageSettings.PaperSize = new PaperSize("Card", 213, 339); // 213, 339
            pd.DefaultPageSettings.Landscape = true;

            pd.PrintPage += new PrintPageEventHandler(imprimirDocumento);

            PrintPreviewDialog previewDialog = new PrintPreviewDialog();
            previewDialog.Document = pd;
            //(previewDialog as Form).WindowState = FormWindowState.Normal;
            (previewDialog as Form).StartPosition = FormStartPosition.CenterParent;
            previewDialog.ShowDialog();
        }

        private void imprimirDocumento(System.Object sender, PrintPageEventArgs e)
        {
            e.Graphics.DrawImage(bmps[index++], 0, 0, 345, 220); //372, 235  //OK 347, 221
            if (index < bmps.Count) e.HasMorePages = true; else index = 0;
        }

        






        //Crop Picture Class
        // declare some variable for crop coordinates
        int crpX, crpY, rectW, rectH;
        // declare crop pen for croppingt image
        public Pen crpPen = new Pen(Color.White);
        private void cropSelectBtn_Click(object sender, EventArgs e)
        {
            // declare mouse event handlers
            cropPictureBox.MouseDown += new MouseEventHandler(cropPictureBox_MouseDown);
            cropPictureBox.MouseMove += new MouseEventHandler(cropPictureBox_MouseMove);
            cropPictureBox.MouseEnter += new EventHandler(cropPictureBox_MouseEnter);
            Controls.Add(cropPictureBox);
        }

        private void cropBtn_Click(object sender, EventArgs e)
        {
            //label1.Text = "Dimension :" + rectW + "," + rectH;
            Cursor = Cursors.Default;
            //Now we will draw the cropped image into pictureBox 2
            Bitmap bmp2 = new Bitmap(cropPictureBox.Width, cropPictureBox.Height);
            cropPictureBox.DrawToBitmap(bmp2, cropPictureBox.ClientRectangle);

            Bitmap crpImage = new Bitmap(rectW, rectH);

            for (int i = 0; i < rectW; i++)
            {
                for (int y = 0; y < rectH; y++)
                {
                    Color pxlclr = bmp2.GetPixel(crpX + i, crpY + y);
                    crpImage.SetPixel(i, y, pxlclr);
                }
            }

            profilePic.Image = (Image)crpImage;
            profilePic.SizeMode = PictureBoxSizeMode.StretchImage;
        }

        private void cropPictureBox_MouseDown(object sender, MouseEventArgs e)
        {
            base.OnMouseDown(e);
            if (e.Button == MouseButtons.Left)
            {
                Cursor = Cursors.Cross;
                crpPen.DashStyle = System.Drawing.Drawing2D.DashStyle.Dot;
                // set initial x,y coordinates for crop rectangle
                // this is where we firstly click on image
                crpX = e.X;
                crpY = e.Y;
            }
        }

        

        private void cropPictureBox_MouseEnter(object sender, EventArgs e)
        {
            base.OnMouseEnter(e);
            Cursor = Cursors.Cross;
        }

        private void cropPictureBox_MouseMove(object sender, MouseEventArgs e)
        {
            base.OnMouseMove(e);
            if (e.Button == MouseButtons.Left)
            {
                cropPictureBox.Refresh();
                //set width and height for crop rectangle
                rectW = e.X - crpX;
                rectH = e.Y - crpY;
                Graphics g = cropPictureBox.CreateGraphics();
                g.DrawRectangle(crpPen, crpX, crpY, rectW, rectH);
                g.Dispose();
            }
        }

        private void cardFrontBackgroudToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (this.openFileFrontCard.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    Image img = Image.FromFile(this.openFileFrontCard.FileName);
                    pictureBoxFront.Image = img;
                }
                catch (Exception err)
                {
                    pictureBoxFront.Image = null;
                    MessageBox.Show("Failed to open file. " + err.Message);
                }
            }
        }

        private void cardBackBackgroundToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (this.openFileBackCard.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    Image img = Image.FromFile(this.openFileBackCard.FileName);
                    pictureBoxBack.Image = img;
                }
                catch (Exception err)
                {
                    pictureBoxBack.Image = null;
                    MessageBox.Show("Failed to open file. " + err.Message);
                }
            }
        }


        private void printBothSideCardToolStripMenuItem_Click(object sender, EventArgs e)
        {
            imprimir();
        }
        

        private void mysqlLoadBtn_Click(object sender, EventArgs e)
        {
            GetData();
            updateDatagrid();
        }

        private void existToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }




        // Zooom Card Image

        private double[] zoomFactor = { .25, .33, .50, .66, .80, 1, 1.25, 1.5, 2.0, 2.5, 3.0 };



        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            setZoom();
        }
        private void setZoom()
        {
            // The scrollZoom changed so reset the zoom factor
            // based on the scrollZoom TrackBar position.
            double newZoom = zoomFactor[trackBar1.Value];

            // Set the ImageBox width and height to the new zoom
            // factor by multiplying the Image inside the Imagebox
            // by the new zoom factor.
            pictureBoxFront.Width = Convert.ToInt32(pictureBoxFront.Image.Width * newZoom);
            pictureBoxFront.Height = Convert.ToInt32(pictureBoxFront.Image.Height * newZoom);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            groupBox1.Hide();
        }

        private void tb_start_id_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(tb_start_id.Text, "[^0-9]"))
            {
                MessageBox.Show("Please enter only numbers.");
                tb_start_id.Text = tb_start_id.Text.Remove(tb_start_id.Text.Length - 1);
            }
        }

        private void tb_end_id_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(tb_end_id.Text, "[^0-9]"))
            {
                MessageBox.Show("Please enter only numbers.");
                tb_end_id.Text = tb_end_id.Text.Remove(tb_end_id.Text.Length - 1);
            }
        }

        [Browsable(true),
        Description("Image loaded into the box.")]
        public Image Image
        {
            get
            {
                return pictureBoxFront.Image;
            }
            set
            {
                // Set the image value
                pictureBoxFront.Image = value;

                // enable the zoom control if this is not a null image
                trackBar1.Enabled = (value != null);

                if (trackBar1.Enabled)
                {
                    // reset zoom control
                    trackBar1.Value = this.trackBar1.Maximum / 2;

                    // Initially, the zoom factor is 100% so set the
                    // ImageBox size equal to the Image size.
                    pictureBoxFront.Size = value.Size;
                }
                else
                {
                    // If null image, then reset the imgBox size
                    // to the size of the panel so that there are no
                    // scroll bars.
                    pictureBoxFront.Size = cardPanel.Size;
                }
            }
        }

        private void init()
        {
            // Add keydown event handler to check if this is a Ctrl+ or Ctrl-
            // If so, then it will change the zoom scroll.
            this.KeyDown += new KeyEventHandler(ImageBoxPanZoom_KeyDown);
        }

        private void ImageBoxPanZoom_KeyDown(object sender, KeyEventArgs e)
        {
            // Was the key combination that was pressed Ctrl+ or Ctrl-?
            // If so, then change the zoom level (but only if the zoom
            // is enabled)
            if (trackBar1.Enabled)
            {
                // Note: The e.KeyData is the combination of all the
                // keys currently pressed down.  To find out if this is
                // the Ctrl key *and* the + key, you "or" the Keys 
                // together. This is a bitwise "or" rather than the 
                // || symbol used for boolean logic.

                if ((e.KeyData == (Keys.Oemplus | Keys.Control)) &&
                    (trackBar1.Value != trackBar1.Maximum))
                {
                    trackBar1.Value++;
                    setZoom();
                }
                else if ((e.KeyData == (Keys.OemMinus | Keys.Control)) &&
                    (trackBar1.Value != trackBar1.Minimum))
                {
                    trackBar1.Value--;
                    setZoom();
                }
            }
        }


    }


}
