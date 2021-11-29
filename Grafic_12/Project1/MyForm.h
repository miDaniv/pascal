#pragma once

namespace Project1 {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	const int SIZE = 10000;
	double Xe[SIZE];
	double Ye[SIZE];

	/// <summary>
	/// Summary for MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: Add the constructor code here
			//
		}

	protected:
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::TextBox^ textBox1;
	protected:
	private: System::Windows::Forms::TextBox^ textBox2;
	private: System::Windows::Forms::Label^ label1;
	private: System::Windows::Forms::Label^ label2;
	private: System::Windows::Forms::Label^ label3;
	private: System::Windows::Forms::Label^ label4;
	private: System::Windows::Forms::Label^ label5;
	private: System::Windows::Forms::Label^ label6;
	private: System::Windows::Forms::Label^ label7;
	private: System::Windows::Forms::Label^ label8;
	private: System::Windows::Forms::Label^ label9;
	private: System::Windows::Forms::Label^ label10;
	private: System::Windows::Forms::TextBox^ textBox3;
	private: System::Windows::Forms::NumericUpDown^ numericUpDown1;
	private: System::Windows::Forms::NumericUpDown^ numericUpDown2;
	private: System::Windows::Forms::NumericUpDown^ numericUpDown3;
	private: System::Windows::Forms::Button^ button1;
	private: System::Windows::Forms::Button^ button2;
	private: System::Windows::Forms::PictureBox^ pictureBox1;
	private: System::Windows::Forms::GroupBox^ groupBox1;
	private: System::Windows::Forms::ComboBox^ comboBox1;

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->textBox1 = (gcnew System::Windows::Forms::TextBox());
			this->textBox2 = (gcnew System::Windows::Forms::TextBox());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->label7 = (gcnew System::Windows::Forms::Label());
			this->label8 = (gcnew System::Windows::Forms::Label());
			this->label9 = (gcnew System::Windows::Forms::Label());
			this->label10 = (gcnew System::Windows::Forms::Label());
			this->textBox3 = (gcnew System::Windows::Forms::TextBox());
			this->numericUpDown1 = (gcnew System::Windows::Forms::NumericUpDown());
			this->numericUpDown2 = (gcnew System::Windows::Forms::NumericUpDown());
			this->numericUpDown3 = (gcnew System::Windows::Forms::NumericUpDown());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->pictureBox1 = (gcnew System::Windows::Forms::PictureBox());
			this->groupBox1 = (gcnew System::Windows::Forms::GroupBox());
			this->comboBox1 = (gcnew System::Windows::Forms::ComboBox());
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->numericUpDown1))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->numericUpDown2))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->numericUpDown3))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox1))->BeginInit();
			this->groupBox1->SuspendLayout();
			this->SuspendLayout();
			// 
			// textBox1
			// 
			this->textBox1->Location = System::Drawing::Point(126, 82);
			this->textBox1->Name = L"textBox1";
			this->textBox1->Size = System::Drawing::Size(124, 20);
			this->textBox1->TabIndex = 0;
			this->textBox1->Text = L"0";
			this->textBox1->TextChanged += gcnew System::EventHandler(this, &MyForm::textBox1_TextChanged);
			// 
			// textBox2
			// 
			this->textBox2->Location = System::Drawing::Point(126, 138);
			this->textBox2->Name = L"textBox2";
			this->textBox2->Size = System::Drawing::Size(124, 20);
			this->textBox2->TabIndex = 1;
			this->textBox2->Text = L"10";
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Location = System::Drawing::Point(409, 16);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(105, 13);
			this->label1->TabIndex = 2;
			this->label1->Text = L"Параметри графіку";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Location = System::Drawing::Point(92, 39);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(118, 13);
			this->label2->TabIndex = 3;
			this->label2->Text = L"Межі зміни аргументу";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Location = System::Drawing::Point(55, 89);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(21, 13);
			this->label3->TabIndex = 4;
			this->label3->Text = L"al=";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Location = System::Drawing::Point(55, 145);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(21, 13);
			this->label4->TabIndex = 5;
			this->label4->Text = L"bl=";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Location = System::Drawing::Point(486, 73);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(178, 13);
			this->label5->TabIndex = 6;
			this->label5->Text = L"Оберіть при потребі інші значення";
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Location = System::Drawing::Point(387, 126);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(117, 13);
			this->label6->TabIndex = 7;
			this->label6->Text = L"Товщина ліній функції";
			// 
			// label7
			// 
			this->label7->AutoSize = true;
			this->label7->Location = System::Drawing::Point(378, 178);
			this->label7->Name = L"label7";
			this->label7->Size = System::Drawing::Size(136, 13);
			this->label7->TabIndex = 8;
			this->label7->Text = L"Товщина осей координат";
			// 
			// label8
			// 
			this->label8->AutoSize = true;
			this->label8->Location = System::Drawing::Point(378, 235);
			this->label8->Name = L"label8";
			this->label8->Size = System::Drawing::Size(115, 13);
			this->label8->TabIndex = 9;
			this->label8->Text = L"Товщина ліній гратки";
			// 
			// label9
			// 
			this->label9->AutoSize = true;
			this->label9->Location = System::Drawing::Point(55, 179);
			this->label9->Name = L"label9";
			this->label9->Size = System::Drawing::Size(165, 13);
			this->label9->TabIndex = 10;
			this->label9->Text = L"Введіть кількість точок графіку";
			// 
			// label10
			// 
			this->label10->AutoSize = true;
			this->label10->Location = System::Drawing::Point(55, 225);
			this->label10->Name = L"label10";
			this->label10->Size = System::Drawing::Size(27, 13);
			this->label10->TabIndex = 11;
			this->label10->Text = L"Ne=";
			// 
			// textBox3
			// 
			this->textBox3->Location = System::Drawing::Point(126, 218);
			this->textBox3->Name = L"textBox3";
			this->textBox3->Size = System::Drawing::Size(124, 20);
			this->textBox3->TabIndex = 12;
			this->textBox3->Text = L"9000";
			// 
			// numericUpDown1
			// 
			this->numericUpDown1->Location = System::Drawing::Point(623, 119);
			this->numericUpDown1->Maximum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 5, 0, 0, 0 });
			this->numericUpDown1->Minimum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 1, 0, 0, 0 });
			this->numericUpDown1->Name = L"numericUpDown1";
			this->numericUpDown1->Size = System::Drawing::Size(113, 20);
			this->numericUpDown1->TabIndex = 13;
			this->numericUpDown1->Value = System::Decimal(gcnew cli::array< System::Int32 >(4) { 3, 0, 0, 0 });
			// 
			// numericUpDown2
			// 
			this->numericUpDown2->Location = System::Drawing::Point(623, 171);
			this->numericUpDown2->Maximum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 5, 0, 0, 0 });
			this->numericUpDown2->Minimum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 1, 0, 0, 0 });
			this->numericUpDown2->Name = L"numericUpDown2";
			this->numericUpDown2->Size = System::Drawing::Size(113, 20);
			this->numericUpDown2->TabIndex = 14;
			this->numericUpDown2->Value = System::Decimal(gcnew cli::array< System::Int32 >(4) { 2, 0, 0, 0 });
			// 
			// numericUpDown3
			// 
			this->numericUpDown3->Location = System::Drawing::Point(623, 228);
			this->numericUpDown3->Maximum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 5, 0, 0, 0 });
			this->numericUpDown3->Minimum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 1, 0, 0, 0 });
			this->numericUpDown3->Name = L"numericUpDown3";
			this->numericUpDown3->Size = System::Drawing::Size(113, 20);
			this->numericUpDown3->TabIndex = 15;
			this->numericUpDown3->Value = System::Decimal(gcnew cli::array< System::Int32 >(4) { 1, 0, 0, 0 });
			// 
			// button1
			// 
			this->button1->Location = System::Drawing::Point(801, 119);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(68, 23);
			this->button1->TabIndex = 16;
			this->button1->Text = L"Побудова";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click_1);
			// 
			// button2
			// 
			this->button2->Location = System::Drawing::Point(801, 201);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(68, 23);
			this->button2->TabIndex = 17;
			this->button2->Text = L"Вихід";
			this->button2->UseVisualStyleBackColor = true;
			// 
			// pictureBox1
			// 
			this->pictureBox1->Location = System::Drawing::Point(12, 12);
			this->pictureBox1->Name = L"pictureBox1";
			this->pictureBox1->Size = System::Drawing::Size(1111, 355);
			this->pictureBox1->TabIndex = 18;
			this->pictureBox1->TabStop = false;
			// 
			// groupBox1
			// 
			this->groupBox1->Controls->Add(this->comboBox1);
			this->groupBox1->Controls->Add(this->label2);
			this->groupBox1->Controls->Add(this->textBox1);
			this->groupBox1->Controls->Add(this->button2);
			this->groupBox1->Controls->Add(this->button1);
			this->groupBox1->Controls->Add(this->textBox2);
			this->groupBox1->Controls->Add(this->numericUpDown3);
			this->groupBox1->Controls->Add(this->label3);
			this->groupBox1->Controls->Add(this->numericUpDown2);
			this->groupBox1->Controls->Add(this->label4);
			this->groupBox1->Controls->Add(this->numericUpDown1);
			this->groupBox1->Controls->Add(this->label9);
			this->groupBox1->Controls->Add(this->label8);
			this->groupBox1->Controls->Add(this->textBox3);
			this->groupBox1->Controls->Add(this->label7);
			this->groupBox1->Controls->Add(this->label10);
			this->groupBox1->Controls->Add(this->label6);
			this->groupBox1->Controls->Add(this->label1);
			this->groupBox1->Controls->Add(this->label5);
			this->groupBox1->Location = System::Drawing::Point(12, 373);
			this->groupBox1->Name = L"groupBox1";
			this->groupBox1->Size = System::Drawing::Size(1117, 265);
			this->groupBox1->TabIndex = 19;
			this->groupBox1->TabStop = false;
			// 
			// comboBox1
			// 
			this->comboBox1->FormattingEnabled = true;
			this->comboBox1->Items->AddRange(gcnew cli::array< System::Object^  >(2) { L"x*sin(x).", L"x*cos(x)" });
			this->comboBox1->Location = System::Drawing::Point(788, 52);
			this->comboBox1->Name = L"comboBox1";
			this->comboBox1->Size = System::Drawing::Size(211, 21);
			this->comboBox1->TabIndex = 18;
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(1161, 650);
			this->Controls->Add(this->groupBox1);
			this->Controls->Add(this->pictureBox1);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->numericUpDown1))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->numericUpDown2))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->numericUpDown3))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox1))->EndInit();
			this->groupBox1->ResumeLayout(false);
			this->groupBox1->PerformLayout();
			this->ResumeLayout(false);

		}
#pragma endregion
		double Kx, Ky, Zx, Zy;
		double al, bl; 
		int Ne;
		double maxx, maxy, minx, miny;
		double krx, kry, xx, yy, Gx, Gy; 
		int KrokX, KrokY, L;

		double f(double x, char key)
		{
			switch (key)
			{
			case 0: 			return x * Math::Sin(x);
			case 1:			return x * Math::Cos(x);

			}
		}

			void TabF(double Xe[SIZE], double Ye[SIZE], char key)
		{
			double h;
			h = (bl - al) / Ne;
			Xe[0] = al;
			for (int i = 0; i <  Ne; ++i)
			{
				Ye[i] = f(Xe[i], key);
				Xe[i + 1] = Xe[i] + h;
			}
		}
	

private: System::Void button2_Click(System::Object ^ sender, System::EventArgs ^ e)
{
	Close();
}

private: System::Void button1_Click_1(System::Object^ sender, System::EventArgs^ e) {

	Pen^ pen1 = gcnew Pen(Color::Blue, (float)(numericUpDown1->Value));
	Pen^ pen2 = gcnew Pen(Color::Red, (float)(numericUpDown2->Value));
	Pen^ pen3 = gcnew Pen(Color::Green, (float)(numericUpDown3->Value));

	Graphics^ g = pictureBox1->CreateGraphics();
	g->Clear(Color::White);

	int pb_Height = pictureBox1->Height;
	int pb_Width = pictureBox1->Width;

	L = 40;

	al = Convert::ToDouble(textBox1->Text);
	bl = Convert::ToDouble(textBox2->Text);
	Ne = Convert::ToInt32(textBox3->Text);

	char key;

	switch (comboBox1->SelectedIndex)
	{
	case 0: key = 0; break;
	case 1: key = 1; break;
	}

	TabF(Xe, Ye, key);

	minx = Xe[0];
	maxx = Xe[Ne - 1];

	miny = Ye[0];
	maxy = Ye[0];

	for (int i = 0; i < Ne; i++)
	{
		if (maxy < Ye[i])
			maxy = Ye[i];
		if (miny > Ye[i])
			miny = Ye[i];
	}

	Kx = (pb_Width - 2 * L) / (maxx - minx);
	Ky = (pb_Height - 2 * L) / (miny - maxy);

	Zx = (pb_Width * minx - L * (maxx + minx)) / (minx - maxx);
	Zy = (pb_Height * maxy - L * (miny + maxy)) / (maxy - miny);

	if (minx * maxx <= 0.0) Gx = 0.0;

	if (minx * maxx > 0.0) Gx = minx;

	if (minx * maxx > 0.0 && minx < 0.0) Gx = maxx;

	if (miny * maxy <= 0.0) Gy = 0.0;

	if (miny * maxy > 0.0 && miny > 0.0) Gy = miny;

	if (miny * maxy > 0.0 && miny < 0.0) Gy = maxy;

	KrokX = (pb_Width - 2 * L) / 10;
	KrokY = (pb_Height - 2 * L) / 9;

	for (int i = 0; i < 9; i++)
	{
		auto y1 = Math::Round(Ky * Gy + Zy, 4) + i * KrokY;
		g->DrawLine(pen3, L, y1, pb_Width - L, y1);

		auto y2 = Math::Round(Ky * Gy + Zy, 4) - i * KrokY;
		g->DrawLine(pen3, L, y2, pb_Width - L, y2);
	}

	for (int i = 0; i < 10; i++)
	{
		g->DrawLine(pen3, Math::Round(Kx * Gx + Zx, 4) + i * KrokX, L - 20,
			Math::Round(Kx * Gx + Zx, 4) + i * KrokX, pb_Height - L + 30);
		g->DrawLine(pen3, Math::Round(Kx * Gx + Zx, 4) - i * KrokX, L - 20,
			Math::Round(Kx * Gx + Zx, 4) - i * KrokX, pb_Height - L + 30);
	}
	
	xx = minx;

	krx = (maxx - minx) / 10.0;

	for (int i = 0; i < 10; i++)
	{
		g->DrawString(Convert::ToString(Math::Round(xx, 1)), gcnew Drawing::Font("Times", 8),
			Brushes::Black, L + 4 + i * KrokX, Math::Round(Ky * Gy + Zy, 4) - L + 40.0);

		xx = xx + krx;
	}

	yy = maxy;
	kry = (maxy) / 6.0;

	for (int i = 0; i < 7; ++i)
	{
		g->DrawString(Convert::ToString(Math::Round(yy, 1)), gcnew Drawing::Font("Times", 8),
			Brushes::Black, Math::Round(Kx * Gx + Zx, 4) - L + 10.0f, (float)(L + i * KrokY) - 24.0);
		yy = yy - kry;
	}

	for (int i = 1; i < 6; ++i)
	{
		g->DrawString(Convert::ToString(Math::Round(yy, 1)), gcnew Drawing::Font("Times", 8),
			Brushes::Black, Math::Round(Kx * Gx + Zx, 4) - L + 10.0f, (float)(L +  (6 + i) * KrokY) - 24.0);
		yy = yy - kry;
	}

	
	g->DrawLine(pen2, L, Math::Round(Ky * Gy + Zy, 4), Math::Round(pb_Width - 10, 4),
		Math::Round(Ky * Gy + Zy, 4));

	g->DrawLine(pen2, Math::Round(Kx * Gx + Zx, 4), 10, Math::Round(Kx * Gx + Zx, 4),
		Math::Round(pb_Height - 10, 4));
	for (int i = 1; i <= Ne - 1; i++)
	{
		g->DrawLine(pen1, Math::Round(Kx * Xe[i - 1] + Zx, 4), Math::Round(Ky * Ye[i - 1] + Zy, 4), Math::Round(Kx * Xe[i] + Zx, 4), Convert::ToInt32(Math::Round(Ky * Ye[i] + Zy, 4)));
	}
}
private: System::Void textBox1_TextChanged(System::Object^ sender, System::EventArgs^ e) {
}
};
}
