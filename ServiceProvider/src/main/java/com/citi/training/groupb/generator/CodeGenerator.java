package com.citi.training.groupb.generator;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

public class CodeGenerator {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/citi?useUnicode=true&useSSL=false&characterEncoding=utf8&allowPublicKeyRetrieval=true";
        String username = "groupb";
        String passwd = "d@tAbaseadmIn2022";

        FastAutoGenerator.create(url, username, passwd)
                .globalConfig(builder -> {
                    builder.outputDir("AutoGenerate")
                            .author("Charlie Du")
                            .commentDate("yyyy-mm-dd");
                })
                .packageConfig(builder -> {
                    builder.parent("com.citi.training.groupb")
                            .moduleName("serviceprovider")
                            .entity("entity")
                            .mapper("mapper")
                            .xml("mapper")
                            .service("service")
                            .serviceImpl("service/impl")
                            .controller("controller");
                })
                .strategyConfig(builder -> {
                    builder.addInclude("salesman")
                            .addInclude("exchange_rate")
                            .addInclude("transaction_records")
                            .addInclude("shares")
                            .addInclude("user")
                            .addInclude("transaction_view")
                            .addInclude("shares_history")
                            .serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImpl")
                            .entityBuilder()
                            .enableLombok()
                            .logicDeleteColumnName("deleted")
                            .enableTableFieldAnnotation()
                            .controllerBuilder()
                            .formatFileName("%sController")
                            .mapperBuilder()
                            .superClass(BaseMapper.class)
                            .formatMapperFileName("%sMapper")
                            .enableMapperAnnotation()
                            .formatXmlFileName("%sMapper");
                })
                .templateEngine(new FreemarkerTemplateEngine())
                .execute();
    }
}
