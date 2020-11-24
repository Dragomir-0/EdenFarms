namespace PresentationLayer
{
    partial class DeletePlotForm
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtPlotID = new System.Windows.Forms.TextBox();
            this.lblPlotID = new System.Windows.Forms.Label();
            this.txtPerformance = new System.Windows.Forms.TextBox();
            this.txtUserOverride = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtPlant = new System.Windows.Forms.TextBox();
            this.txtFarmID = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.txtPlotID);
            this.panel1.Controls.Add(this.lblPlotID);
            this.panel1.Controls.Add(this.txtPerformance);
            this.panel1.Controls.Add(this.txtUserOverride);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.txtPlant);
            this.panel1.Controls.Add(this.txtFarmID);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(377, 153);
            this.panel1.TabIndex = 9;
            // 
            // txtPlotID
            // 
            this.txtPlotID.Location = new System.Drawing.Point(142, 11);
            this.txtPlotID.Name = "txtPlotID";
            this.txtPlotID.Size = new System.Drawing.Size(210, 20);
            this.txtPlotID.TabIndex = 9;
            this.txtPlotID.TextChanged += new System.EventHandler(this.txtPlotID_TextChanged);
            // 
            // lblPlotID
            // 
            this.lblPlotID.AutoSize = true;
            this.lblPlotID.Location = new System.Drawing.Point(3, 14);
            this.lblPlotID.Name = "lblPlotID";
            this.lblPlotID.Size = new System.Drawing.Size(39, 13);
            this.lblPlotID.TabIndex = 8;
            this.lblPlotID.Text = "Plot ID";
            // 
            // txtPerformance
            // 
            this.txtPerformance.Location = new System.Drawing.Point(142, 117);
            this.txtPerformance.Name = "txtPerformance";
            this.txtPerformance.Size = new System.Drawing.Size(210, 20);
            this.txtPerformance.TabIndex = 7;
            // 
            // txtUserOverride
            // 
            this.txtUserOverride.Location = new System.Drawing.Point(142, 91);
            this.txtUserOverride.Name = "txtUserOverride";
            this.txtUserOverride.Size = new System.Drawing.Size(210, 20);
            this.txtUserOverride.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 120);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(106, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Performance Review";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 94);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "User Override";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 68);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Plant ID";
            // 
            // txtPlant
            // 
            this.txtPlant.Location = new System.Drawing.Point(142, 65);
            this.txtPlant.Name = "txtPlant";
            this.txtPlant.Size = new System.Drawing.Size(210, 20);
            this.txtPlant.TabIndex = 2;
            // 
            // txtFarmID
            // 
            this.txtFarmID.Location = new System.Drawing.Point(142, 39);
            this.txtFarmID.Name = "txtFarmID";
            this.txtFarmID.Size = new System.Drawing.Size(210, 20);
            this.txtFarmID.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Farm ID";
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(226, 171);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(163, 41);
            this.btnDelete.TabIndex = 8;
            this.btnDelete.Text = "Delete Plot";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(12, 171);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(163, 41);
            this.btnCancel.TabIndex = 7;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // DeletePlotForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(400, 222);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnCancel);
            this.Name = "DeletePlotForm";
            this.Text = "DeletePlotForm";
            this.Load += new System.EventHandler(this.DeletePlotForm_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtPlotID;
        private System.Windows.Forms.Label lblPlotID;
        private System.Windows.Forms.TextBox txtPerformance;
        private System.Windows.Forms.TextBox txtUserOverride;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtPlant;
        private System.Windows.Forms.TextBox txtFarmID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnCancel;
    }
}