#pragma once

namespace Project1 {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

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
	private: System::Windows::Forms::DataGridView^ A_Matrix_dgv;
	protected:
	private: System::Windows::Forms::DataGridView^ X_Vector_dgv;
	private: System::Windows::Forms::DataGridView^ B_Vector_dgv;
	private: System::Windows::Forms::DataGridView^ T_Matrix_dgv;
	private: System::Windows::Forms::Button^ BÑreateGrid;
	private: System::Windows::Forms::Button^ BClear;
	private: System::Windows::Forms::Button^ BClose;
	private: System::Windows::Forms::NumericUpDown^ NUD_rozmir;
	private: System::Windows::Forms::Label^ label1;
	private: System::Windows::Forms::Label^ label2;
	private: System::Windows::Forms::Label^ label3;
	private: System::Windows::Forms::Label^ label4;
	private: System::Windows::Forms::Label^ label5;

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
			this->A_Matrix_dgv = (gcnew System::Windows::Forms::DataGridView());
			this->X_Vector_dgv = (gcnew System::Windows::Forms::DataGridView());
			this->B_Vector_dgv = (gcnew System::Windows::Forms::DataGridView());
			this->T_Matrix_dgv = (gcnew System::Windows::Forms::DataGridView());
			this->BÑreateGrid = (gcnew System::Windows::Forms::Button());
			this->BClear = (gcnew System::Windows::Forms::Button());
			this->BClose = (gcnew System::Windows::Forms::Button());
			this->NUD_rozmir = (gcnew System::Windows::Forms::NumericUpDown());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->A_Matrix_dgv))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->X_Vector_dgv))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->B_Vector_dgv))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->T_Matrix_dgv))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->NUD_rozmir))->BeginInit();
			this->SuspendLayout();
			// 
			// A_Matrix_dgv
			// 
			this->A_Matrix_dgv->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->A_Matrix_dgv->ColumnHeadersVisible = false;
			this->A_Matrix_dgv->Location = System::Drawing::Point(61, 84);
			this->A_Matrix_dgv->Name = L"A_Matrix_dgv";
			this->A_Matrix_dgv->RowHeadersVisible = false;
			this->A_Matrix_dgv->Size = System::Drawing::Size(423, 154);
			this->A_Matrix_dgv->TabIndex = 0;
			// 
			// X_Vector_dgv
			// 
			this->X_Vector_dgv->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->X_Vector_dgv->ColumnHeadersVisible = false;
			this->X_Vector_dgv->Location = System::Drawing::Point(538, 84);
			this->X_Vector_dgv->Name = L"X_Vector_dgv";
			this->X_Vector_dgv->RowHeadersVisible = false;
			this->X_Vector_dgv->Size = System::Drawing::Size(172, 154);
			this->X_Vector_dgv->TabIndex = 1;
			// 
			// B_Vector_dgv
			// 
			this->B_Vector_dgv->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->B_Vector_dgv->ColumnHeadersVisible = false;
			this->B_Vector_dgv->Location = System::Drawing::Point(750, 82);
			this->B_Vector_dgv->Name = L"B_Vector_dgv";
			this->B_Vector_dgv->ReadOnly = true;
			this->B_Vector_dgv->RowHeadersVisible = false;
			this->B_Vector_dgv->Size = System::Drawing::Size(201, 156);
			this->B_Vector_dgv->TabIndex = 2;
			// 
			// T_Matrix_dgv
			// 
			this->T_Matrix_dgv->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->T_Matrix_dgv->ColumnHeadersVisible = false;
			this->T_Matrix_dgv->Location = System::Drawing::Point(61, 322);
			this->T_Matrix_dgv->Name = L"T_Matrix_dgv";
			this->T_Matrix_dgv->ReadOnly = true;
			this->T_Matrix_dgv->RowHeadersVisible = false;
			this->T_Matrix_dgv->Size = System::Drawing::Size(423, 159);
			this->T_Matrix_dgv->TabIndex = 3;
			// 
			// BÑreateGrid
			// 
			this->BÑreateGrid->Location = System::Drawing::Point(606, 333);
			this->BÑreateGrid->Name = L"BÑreateGrid";
			this->BÑreateGrid->Size = System::Drawing::Size(144, 54);
			this->BÑreateGrid->TabIndex = 4;
			this->BÑreateGrid->Text = L"Ðîçâ\'ÿçàòè";
			this->BÑreateGrid->UseVisualStyleBackColor = true;
			// 
			// BClear
			// 
			this->BClear->Location = System::Drawing::Point(842, 333);
			this->BClear->Name = L"BClear";
			this->BClear->Size = System::Drawing::Size(145, 53);
			this->BClear->TabIndex = 5;
			this->BClear->Text = L"Î÷èñòèòè";
			this->BClear->UseVisualStyleBackColor = true;
			// 
			// BClose
			// 
			this->BClose->Location = System::Drawing::Point(656, 435);
			this->BClose->Name = L"BClose";
			this->BClose->Size = System::Drawing::Size(283, 64);
			this->BClose->TabIndex = 6;
			this->BClose->Text = L"Çàêðèòè";
			this->BClose->UseVisualStyleBackColor = true;
			// 
			// NUD_rozmir
			// 
			this->NUD_rozmir->Location = System::Drawing::Point(355, 25);
			this->NUD_rozmir->Maximum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 5, 0, 0, 0 });
			this->NUD_rozmir->Minimum = System::Decimal(gcnew cli::array< System::Int32 >(4) { 1, 0, 0, 0 });
			this->NUD_rozmir->Name = L"NUD_rozmir";
			this->NUD_rozmir->Size = System::Drawing::Size(50, 20);
			this->NUD_rozmir->TabIndex = 7;
			this->NUD_rozmir->Value = System::Decimal(gcnew cli::array< System::Int32 >(4) { 1, 0, 0, 0 });
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Location = System::Drawing::Point(77, 32);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(113, 13);
			this->label1->TabIndex = 8;
			this->label1->Text = L"Ðîçì³ðí³ñòü ñèñòåìè";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Location = System::Drawing::Point(114, 63);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(61, 13);
			this->label2->TabIndex = 9;
			this->label2->Text = L"Ìàòðèöÿ À";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Location = System::Drawing::Point(584, 63);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(53, 13);
			this->label3->TabIndex = 10;
			this->label3->Text = L"Âåêòîð Â";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Location = System::Drawing::Point(816, 63);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(53, 13);
			this->label4->TabIndex = 11;
			this->label4->Text = L"Âåêòîð Õ";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Location = System::Drawing::Point(162, 290);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(100, 13);
			this->label5->TabIndex = 12;
			this->label5->Text = L"Òðèêóòíà ìàòðèöÿ";
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(1035, 522);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->NUD_rozmir);
			this->Controls->Add(this->BClose);
			this->Controls->Add(this->BClear);
			this->Controls->Add(this->BÑreateGrid);
			this->Controls->Add(this->T_Matrix_dgv);
			this->Controls->Add(this->B_Vector_dgv);
			this->Controls->Add(this->X_Vector_dgv);
			this->Controls->Add(this->A_Matrix_dgv);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->A_Matrix_dgv))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->X_Vector_dgv))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->B_Vector_dgv))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->T_Matrix_dgv))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->NUD_rozmir))->EndInit();
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion
	};
}
