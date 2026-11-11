.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and al, sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test dil, 46
and dil, -62
and dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or bl, dl
not al
test al, -81
xor rax, -404206377
test rax, -2052112368
and si, -121
or dl, dil
and rax, -731384280
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
