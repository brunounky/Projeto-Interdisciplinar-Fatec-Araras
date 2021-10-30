package fatec.com.app_mobile_sos_cardio;


import android.os.Bundle;
import android.widget.Switch;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.content.ContextCompat;


public class LoginActivity extends AppCompatActivity {

    public static final int BOX_BACKGROUND_FILLED = R.color.purple_light;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setTitle("SOS Cardio");

        setContentView(R.layout.activity_login);

        initActions();

    }


    private void initActions() {
        switchLogin();
    }

    private void switchLogin() {
        final Switch cSwitch = findViewById(R.id.cSwitch);
        final TextView cSwitchText = findViewById(R.id.cSwitch_textView);
        cSwitch.setOnCheckedChangeListener((buttonView, isChecked) -> {
            ConstraintLayout constraintLayout = findViewById(R.id.signInLayout);
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(constraintLayout);
            constraintSet.connect(R.id.cSwitch_textView, ConstraintSet.TOP, R.id.cSwitch, ConstraintSet.TOP, 0);
            constraintSet.connect(R.id.cSwitch_textView, ConstraintSet.BOTTOM, R.id.cSwitch, ConstraintSet.BOTTOM, 0);
            cSwitch.setThumbDrawable(getResources().getDrawable(R.drawable.switch_button, null));

            if (isChecked) {
                cSwitchText.setText(R.string.login);
                constraintSet.connect(R.id.cSwitch_textView, ConstraintSet.LEFT, R.id.cSwitch, ConstraintSet.LEFT, 0);
                constraintSet.connect(R.id.cSwitch_textView, ConstraintSet.RIGHT, ConstraintSet.UNSET, ConstraintSet.RIGHT, 0);
                cSwitch.setTrackDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.switch_button));
            } else {
                cSwitchText.setText(R.string.cadastrar);
                constraintSet.connect(R.id.cSwitch_textView, ConstraintSet.RIGHT, R.id.cSwitch, ConstraintSet.RIGHT, 0);
                constraintSet.connect(R.id.cSwitch_textView, ConstraintSet.LEFT, ConstraintSet.UNSET, ConstraintSet.LEFT, 0);
                cSwitch.setTrackDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.switch_button_on_click));
                cSwitch.setThumbDrawable(getResources().getDrawable(R.drawable.switch_button_on_click, null));
            }
            constraintSet.applyTo(constraintLayout);

        });
    }

}