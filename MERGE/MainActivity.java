package com.example.test01;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    Button img_btn1, img_btn2;
    ImageView img_dog1, img_dog2, iv_dog1, iv_dog2;
    TextView tv_text;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        img_btn1 = findViewById(R.id.img_btn1);
        img_btn2 = findViewById(R.id.img_btn2);
        img_dog1 = findViewById(R.id.img_dog1);
        iv_dog1 = findViewById(R.id.iv_dog1);
        iv_dog2 = findViewById(R.id.iv_dog2);
        tv_text = findViewById(R.id.tv_text);

        img_btn1.setOnClickListener(new View.OnClickListener() {
            int cnt = 0;

            @Override
            public void onClick(View v) {
                if (cnt == 0) {
                    img_dog2.setVisibility(View.INVISIBLE);
                    img_dog1.setVisibility(View.VISIBLE);
                    cnt++;
                } else if (cnt == 1) {
                    img_dog1.setVisibility(View.INVISIBLE);
                    img_dog2.setVisibility(View.VISIBLE);

                    cnt = 0;
                }
            }
        });

        img_btn2.setOnClickListener(new View.OnClickListener() {
            int cnt = 0;
            @Override
            public void onClick(View v) {
                if (cnt == 0) {
                    iv_dog2.setVisibility(View.INVISIBLE);
                    iv_dog1.setVisibility(View.VISIBLE);
                    cnt++;
                } else if (cnt == 1) {
                    iv_dog1.setVisibility(View.INVISIBLE);
                    iv_dog2.setVisibility(View.VISIBLE);

                    cnt = 0;
                }
            }
        });

    }
}