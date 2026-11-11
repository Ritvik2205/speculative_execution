.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
or cl, 119
or dl, dil
or bl, -54
xor cl, 55
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
test al, cl
bts rbx, 25
test al, -7
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and dl, dil
and sil, -56
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
jmp .bb_0.1
.bb_0.1:
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
