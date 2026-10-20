package org.example.kivyapp

import android.app.Activity
import android.os.Bundle
import android.view.Gravity
import android.widget.TextView

/**
 * Native Android host placeholder. Kivy runs through python-for-android's SDL2
 * bootstrap; this Activity alone cannot host Python/Kivy. See README.
 */
class MainActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val message = TextView(this).apply {
            text = "Kivy runtime must be packaged with python-for-android.\n\nSee README.md for the no-Buildozer build."
            gravity = Gravity.CENTER
            textSize = 18f
            setPadding(32, 32, 32, 32)
        }
        setContentView(message)
    }
}
