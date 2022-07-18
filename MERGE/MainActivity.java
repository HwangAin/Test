package com.example.test01_layout;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {

    Button btn_img1, btn_img2;
    ImageView img1, img2, img3, img4;
    int cnt = 0;
    int cnt1 = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn_img1 = findViewById(R.id.btn_img1);
        btn_img2 = findViewById(R.id.btn_img2);
        img1 = findViewById(R.id.img1);
        img2 = findViewById(R.id.img2);

        img3 = findViewById(R.id.img3);
        img4 = findViewById(R.id.img4);


        btn_img1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ++cnt;
                if (cnt == 1) {
                    img1.setVisibility(View.GONE);
                    img1.setVisibility(View.VISIBLE);
                } else {
                    img2.setVisibility(View.GONE);
                    img2.setVisibility(View.VISIBLE);
                    cnt = 0;
                }

            }
        });

        btn_img2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ++cnt1;

                if (cnt1 == 1) {
                    img3.setVisibility(View.VISIBLE);
                    img3.setVisibility(View.GONE);

                } else {
                    img4.setVisibility(View.VISIBLE);
                    img4.setVisibility(View.GONE);

                    cnt1 = 0;
                }

            }
        });


    }


}