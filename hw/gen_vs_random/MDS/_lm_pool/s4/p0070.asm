.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and bl, 68
test cl, dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 82
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
or cl, dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
or cl, 119
btc ax, 7
test dil, al
and esi, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
