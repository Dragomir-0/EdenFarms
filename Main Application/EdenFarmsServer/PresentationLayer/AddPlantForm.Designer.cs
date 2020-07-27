namespace PresentationLayer
{
    partial class AddPlantForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.txtCategory = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtName = new System.Windows.Forms.TextBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txtOptPot = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.txtOptPho = new System.Windows.Forms.TextBox();
            this.txtOptNit = new System.Windows.Forms.TextBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label15 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtOptIntOxy = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtOptIntLig = new System.Windows.Forms.TextBox();
            this.txtOptIntTemp = new System.Windows.Forms.TextBox();
            this.txtOptIntHum = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label14 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtOptAmbTemp = new System.Windows.Forms.TextBox();
            this.txtOptAmbHum = new System.Windows.Forms.TextBox();
            this.txtOptAmbLig = new System.Windows.Forms.TextBox();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(12, 397);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(163, 41);
            this.btnCancel.TabIndex = 0;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(625, 397);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(163, 41);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Text = "Add Plant";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel4.Controls.Add(this.txtCategory);
            this.panel4.Controls.Add(this.label1);
            this.panel4.Controls.Add(this.label2);
            this.panel4.Controls.Add(this.txtName);
            this.panel4.Location = new System.Drawing.Point(26, 38);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(400, 100);
            this.panel4.TabIndex = 41;
            // 
            // txtCategory
            // 
            this.txtCategory.Location = new System.Drawing.Point(100, 24);
            this.txtCategory.Name = "txtCategory";
            this.txtCategory.Size = new System.Drawing.Size(281, 20);
            this.txtCategory.TabIndex = 24;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Category";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "Name";
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(100, 60);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(281, 20);
            this.txtName.TabIndex = 23;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Controls.Add(this.label12);
            this.panel3.Controls.Add(this.label11);
            this.panel3.Controls.Add(this.label10);
            this.panel3.Controls.Add(this.txtOptPot);
            this.panel3.Controls.Add(this.label13);
            this.panel3.Controls.Add(this.txtOptPho);
            this.panel3.Controls.Add(this.txtOptNit);
            this.panel3.Location = new System.Drawing.Point(543, 165);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(227, 137);
            this.panel3.TabIndex = 40;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(45, 5);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(148, 20);
            this.label12.TabIndex = 21;
            this.label12.Text = "Optimal Chemical";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(3, 76);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(63, 13);
            this.label11.TabIndex = 14;
            this.label11.Text = "Phosphorus";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(3, 40);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(47, 13);
            this.label10.TabIndex = 15;
            this.label10.Text = "Nitrogen";
            // 
            // txtOptPot
            // 
            this.txtOptPot.Location = new System.Drawing.Point(111, 108);
            this.txtOptPot.Name = "txtOptPot";
            this.txtOptPot.Size = new System.Drawing.Size(100, 20);
            this.txtOptPot.TabIndex = 33;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(3, 111);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(55, 13);
            this.label13.TabIndex = 18;
            this.label13.Text = "Potassium";
            // 
            // txtOptPho
            // 
            this.txtOptPho.Location = new System.Drawing.Point(111, 73);
            this.txtOptPho.Name = "txtOptPho";
            this.txtOptPho.Size = new System.Drawing.Size(100, 20);
            this.txtOptPho.TabIndex = 32;
            // 
            // txtOptNit
            // 
            this.txtOptNit.Location = new System.Drawing.Point(111, 37);
            this.txtOptNit.Name = "txtOptNit";
            this.txtOptNit.Size = new System.Drawing.Size(100, 20);
            this.txtOptNit.TabIndex = 31;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.label15);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.txtOptIntOxy);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.txtOptIntLig);
            this.panel2.Controls.Add(this.txtOptIntTemp);
            this.panel2.Controls.Add(this.txtOptIntHum);
            this.panel2.Location = new System.Drawing.Point(277, 165);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(232, 168);
            this.panel2.TabIndex = 39;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(44, 5);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(137, 20);
            this.label15.TabIndex = 19;
            this.label15.Text = "Optimal Internal";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 40);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Temperature";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(3, 72);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(47, 13);
            this.label9.TabIndex = 10;
            this.label9.Text = "Humidity";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(3, 106);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(30, 13);
            this.label8.TabIndex = 11;
            this.label8.Text = "Light";
            // 
            // txtOptIntOxy
            // 
            this.txtOptIntOxy.Location = new System.Drawing.Point(120, 135);
            this.txtOptIntOxy.Name = "txtOptIntOxy";
            this.txtOptIntOxy.Size = new System.Drawing.Size(100, 20);
            this.txtOptIntOxy.TabIndex = 30;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(3, 138);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(43, 13);
            this.label7.TabIndex = 12;
            this.label7.Text = "Oxygen";
            // 
            // txtOptIntLig
            // 
            this.txtOptIntLig.Location = new System.Drawing.Point(120, 103);
            this.txtOptIntLig.Name = "txtOptIntLig";
            this.txtOptIntLig.Size = new System.Drawing.Size(100, 20);
            this.txtOptIntLig.TabIndex = 29;
            // 
            // txtOptIntTemp
            // 
            this.txtOptIntTemp.Location = new System.Drawing.Point(120, 37);
            this.txtOptIntTemp.Name = "txtOptIntTemp";
            this.txtOptIntTemp.Size = new System.Drawing.Size(100, 20);
            this.txtOptIntTemp.TabIndex = 27;
            // 
            // txtOptIntHum
            // 
            this.txtOptIntHum.Location = new System.Drawing.Point(120, 73);
            this.txtOptIntHum.Name = "txtOptIntHum";
            this.txtOptIntHum.Size = new System.Drawing.Size(100, 20);
            this.txtOptIntHum.TabIndex = 28;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.label14);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.txtOptAmbTemp);
            this.panel1.Controls.Add(this.txtOptAmbHum);
            this.panel1.Controls.Add(this.txtOptAmbLig);
            this.panel1.Location = new System.Drawing.Point(26, 165);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(221, 137);
            this.panel1.TabIndex = 38;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(34, 4);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(141, 20);
            this.label14.TabIndex = 20;
            this.label14.Text = "Optimal Ambient";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 40);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Temperature";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(2, 76);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(47, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Humidity";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(3, 107);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(30, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Light";
            // 
            // txtOptAmbTemp
            // 
            this.txtOptAmbTemp.BackColor = System.Drawing.SystemColors.Window;
            this.txtOptAmbTemp.Location = new System.Drawing.Point(109, 33);
            this.txtOptAmbTemp.Name = "txtOptAmbTemp";
            this.txtOptAmbTemp.Size = new System.Drawing.Size(100, 20);
            this.txtOptAmbTemp.TabIndex = 22;
            // 
            // txtOptAmbHum
            // 
            this.txtOptAmbHum.Location = new System.Drawing.Point(109, 73);
            this.txtOptAmbHum.Name = "txtOptAmbHum";
            this.txtOptAmbHum.Size = new System.Drawing.Size(100, 20);
            this.txtOptAmbHum.TabIndex = 25;
            // 
            // txtOptAmbLig
            // 
            this.txtOptAmbLig.Location = new System.Drawing.Point(109, 104);
            this.txtOptAmbLig.Name = "txtOptAmbLig";
            this.txtOptAmbLig.Size = new System.Drawing.Size(100, 20);
            this.txtOptAmbLig.TabIndex = 26;
            // 
            // AddPlantForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.btnCancel);
            this.Name = "AddPlantForm";
            this.Text = "AddPlantForm";
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.TextBox txtCategory;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtOptPot;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtOptPho;
        private System.Windows.Forms.TextBox txtOptNit;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtOptIntOxy;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtOptIntLig;
        private System.Windows.Forms.TextBox txtOptIntTemp;
        private System.Windows.Forms.TextBox txtOptIntHum;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtOptAmbTemp;
        private System.Windows.Forms.TextBox txtOptAmbHum;
        private System.Windows.Forms.TextBox txtOptAmbLig;
    }
}