package com.example

import io.micronaut.context.annotation.Value
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller("/test")
class PocController(@Value("\${poc.configmap:hi}") private val configmap: String) {

    @Get
    fun getHello() = configmap
}