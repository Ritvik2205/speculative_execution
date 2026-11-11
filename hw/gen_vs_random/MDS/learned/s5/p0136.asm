.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
bts rbx, rdi
test sil, 17
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor di, -83
or al, -75
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or eax, 359647041
xor sil, 110
test dl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
xor eax, 571592471
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
