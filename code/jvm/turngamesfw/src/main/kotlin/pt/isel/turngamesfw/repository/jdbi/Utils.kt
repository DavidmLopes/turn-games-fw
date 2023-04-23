package pt.isel.turngamesfw.repository.jdbi

import org.jdbi.v3.core.Jdbi
import org.jdbi.v3.core.kotlin.KotlinPlugin
import org.jdbi.v3.postgres.PostgresPlugin
import pt.isel.turngamesfw.repository.jdbi.mappers.InfoMapper
import pt.isel.turngamesfw.repository.jdbi.mappers.InstantMapper
import pt.isel.turngamesfw.repository.jdbi.mappers.PasswordValidationInfoMapper
import pt.isel.turngamesfw.repository.jdbi.mappers.TokenValidationInfoMapper

fun Jdbi.configure(): Jdbi {
    installPlugin(KotlinPlugin())
    installPlugin(PostgresPlugin())

    registerColumnMapper(InfoMapper())
    registerColumnMapper(TokenValidationInfoMapper())
    registerColumnMapper(PasswordValidationInfoMapper())
    registerColumnMapper(InstantMapper())

    return this
}