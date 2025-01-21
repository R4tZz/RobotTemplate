*** Settings ***
Variables       ../../config/browser_config.yaml
Variables       ../../config/environment_config.yaml
Library         Browser


*** Variables ***
${config}           ${None}
${env_config}       ${None}


*** Keywords ***
Suite Browser Setup
    [Arguments]    ${config_key}    ${env}
    Load Environment Config    ${env}
    Load Config    ${config_key}
    Load Browser    ${config}
    ${base_ctx}=    Load Context    ${config}    ${env_config}[base_url]
    ${api_ctx}=    Load Context    ${config}    ${env_config}[api_url]
    Set Global Variable    ${base_ctx}
    Set Global Variable    ${api_ctx}
    Switch Context    ${base_ctx}
    Load Page    url=/

Close Browser Setup
    Close Browser

Load Config
    [Arguments]    ${config_key}
    IF    "${config_key}" == "default"
        VAR    ${config}    ${default_browser}
    ELSE IF    "${config_key}" == "debug"
        VAR    ${config}    ${debug_browser}
    ELSE
        Fail    Invalid Config Key: ${config_key}
    END
    Set Global Variable    ${config}

Load Browser
    [Arguments]    ${config}
    New Browser
    ...    browser=${config}[browser]
    ...    headless=${config}[headless]
    ...    timeout=${config}[timeout]
    ...    slowMo=${config}[slow_motion]

Load Context
    [Arguments]    ${config}    ${base_url}
    ${ctx}=    New Context
    ...    baseURL=${base_url}
    ...    viewport={"width": ${config}[viewport_width], "height": ${config}[viewport_height]}
    ...    locale=${config}[locale]
    ...    tracing=${config}[tracing]
    ...    recordVideo=${config}[record_video]
    RETURN    ${ctx}

Load Page
    [Arguments]    ${url}
    New Page    url=${url}    wait_until=domcontentloaded

Load Environment Config
    [Arguments]    ${environment}
    IF    "${environment}" == "dev"
        VAR    ${env_config}    ${dev_env}
    ELSE IF    "${environment}" == "qa"
        VAR    ${env_config}    ${qa_env}
    ELSE
        Fail    Invalid Environment: ${environment}
    END
    Set Global Variable    ${env_config}
