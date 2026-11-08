package com.example.login;

import android.os.Bundle;
import android.widget.*;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    EditText user, pass;
    Button login;

    protected void onCreate(Bundle b) {
        super.onCreate(b);
        setContentView(R.layout.activity_main);

        user = findViewById(R.id.user);
        pass = findViewById(R.id.pass);
        login = findViewById(R.id.login);

        login.setOnClickListener(v -> {
            if(user.getText().toString().equals("admin") &&
                    pass.getText().toString().equals("1234"))
                Toast.makeText(this,"Valid Login",Toast.LENGTH_SHORT).show();
            else
                Toast.makeText(this,"Invalid Login",Toast.LENGTH_SHORT).show();
        });
    }
}
