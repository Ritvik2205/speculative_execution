.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or rax, -141551502
test dl, -85
or sil, -49
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
btr dx, 47
test dil, -51
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or dl, 85
btc di, ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or ax, -7150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
