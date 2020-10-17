package tech.techdad.blandalf

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var welcome = VersionNumber(1)
    }

    fun VersionNumber(version: Int): String {
        return "Blandalf Version: $version"
    }
}