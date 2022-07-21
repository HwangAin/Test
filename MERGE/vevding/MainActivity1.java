package com.example.test03_vendingmachine;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    EditText m_1;
    TextView cost_total, blc, qty_1, qty_2, qty_3, qty_4, qty_5, qty_6, qty_7, qty_8, cost_1, cost_2, cost_3, cost_4, cost_5, cost_6, cost_7, cost_8;
    ImageView img_1, img_2, img_3, img_4, img_5,img_6, img_7, img_8;

    Button btn_1, btn_2, btn_3, btn_4, btn_5, btn_6, btn_7, btn_8, btn_9, btn_10;       //9번은 금액입력 , 10번은 주문하기
    VendingDTO dto = new VendingDTO();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //버튼생성
        btn_1 = findViewById(R.id.btn_1);        btn_2 = findViewById(R.id.btn_2);        btn_3 = findViewById(R.id.btn_3);        btn_4 = findViewById(R.id.btn_4);
        btn_5 = findViewById(R.id.btn_5);        btn_6 = findViewById(R.id.btn_6);        btn_7 = findViewById(R.id.btn_7);        btn_8 = findViewById(R.id.btn_8);
        btn_9 = findViewById(R.id.btn_9);        btn_10 = findViewById(R.id.btn_10);

        //수량
        qty_1 = findViewById(R.id.qty_1);        qty_2 = findViewById(R.id.qty_2);        qty_3 = findViewById(R.id.qty_3);        qty_4 = findViewById(R.id.qty_4);
        qty_5 = findViewById(R.id.qty_5);        qty_6 = findViewById(R.id.qty_6);        qty_7 = findViewById(R.id.qty_7);        qty_8 = findViewById(R.id.qty_8);

        //입력금액 : 총입력금액 blc에 더해져야한다.
        m_1 = findViewById(R.id.m_1);

        //총입력금액
        blc = findViewById(R.id.blc);

        //총 구매금액(cost_total) : 각각의 ost * qty
        cost_total = findViewById(R.id.cost_total);

        btn_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int num =Integer.parseInt(String.valueOf(qty_1.getText())) -1;
                //String num1 = num;

              qty_1.setText();


            }
        });

        // Intent할 음료정보 DTO list
        ArrayList<VendingDTO> list = new ArrayList<VendingDTO>();
        // 0번지에 전체입력금액( 총 구매금액 잔액


        Intent intent = new Intent(MainActivity.this, SubActivity.class);



        //startActivity(intent);

    }
}