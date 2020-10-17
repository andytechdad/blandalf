package tech.techdad.blandalf

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import tech.techdad.blandalf.gwdata.DataManager

class SplashActivity : AppCompatActivity() {

    // This is the loading time of the splash screen
    private val SPLASH_TIME_OUT:Long = 3000 // 1 sec

    private lateinit var dataManager: DataManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)

        Handler().postDelayed({

            dataManager = DataManager(this)

            // Start your app main activity

            startActivity(Intent(this,MainActivity::class.java))

            // close this activity
            finish()
        }, SPLASH_TIME_OUT)
    }
}