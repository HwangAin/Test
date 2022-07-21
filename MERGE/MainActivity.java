<<<<<<< HEAD
package com.example.test01;
=======
package com.example.test01_layout;
>>>>>>> 78d9f272fbb9fecf8db6fe85789716bf60a3ddb3

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
<<<<<<< HEAD
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    Button img_btn1, img_btn2;
    ImageView img_dog1, img_dog2, iv_dog1, iv_dog2;
    TextView tv_text;
=======

public class MainActivity extends AppCompatActivity {

    Button btn_img1, btn_img2;
    ImageView img1, img2, img3, img4;
    int cnt = 0;
    int cnt1 = 0;

>>>>>>> 78d9f272fbb9fecf8db6fe85789716bf60a3ddb3
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

<<<<<<< HEAD
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
=======
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


>>>>>>> 78d9f272fbb9fecf8db6fe85789716bf60a3ddb3
}