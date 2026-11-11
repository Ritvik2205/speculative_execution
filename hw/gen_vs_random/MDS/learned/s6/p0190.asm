.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
xor al, -89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 30
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
or al, -75
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 50
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor ax, -12492
and al, 14
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
btc si, 99
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
