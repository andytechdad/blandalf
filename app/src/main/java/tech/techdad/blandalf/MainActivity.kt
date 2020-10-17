package tech.techdad.blandalf

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import tech.techdad.blandalf.gwdata.DataManager

class MainActivity : AppCompatActivity() {

    private lateinit var dataManager: DataManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        dataManager = DataManager(this)

        var welcome = VersionNumber(1)
    }

    fun VersionNumber(version: Int): String {
        return "Blandalf Version: $version"
    }
}