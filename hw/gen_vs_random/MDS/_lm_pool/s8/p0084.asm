.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 125
or dl, al
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
xor rax, -1128378406
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or cl, dil
jmp .bb_0.3
.bb_0.3:
or cl, 39
xor al, 9
xor al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
