package com.example.tuvandroiddemo

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.tuvandroiddemo.databinding.ActivityMainBinding
import com.tvunetworks.android.sdk.TVUAnywhereSDK

private const val APP_KEY = "test"
private const val APP_SECRET = "test"
private const val USER_NAME = "test"
private const val PASSWORD = "test"

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        connectTUV()
        onDefaultPreview()
    }

    override fun onDestroy() {
        super.onDestroy()
        disconnectTUV()
    }

    private fun onDefaultPreview() {
        binding.btnDefaultPreview.setOnClickListener {
            TVUAnywhereSDK.getInstance().tvuReleaseWhenAppDestroyed(this)
        }
    }

    private fun connectTUV() {
        try {
            TVUAnywhereSDK.getInstance().registerTVUAnywhereSDKWithAppKey(
                APP_KEY,
                APP_SECRET, USER_NAME, PASSWORD
            )
            TVUAnywhereSDK.getInstance().tvuInitWhenAppStarted(this)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private fun disconnectTUV() {
        try {
            TVUAnywhereSDK.getInstance().tvuReleaseWhenAppDestroyed(this)
        }catch (e:Exception) {
            e.printStackTrace()
        }

    }
}