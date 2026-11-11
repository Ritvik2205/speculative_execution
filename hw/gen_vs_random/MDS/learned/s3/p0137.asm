.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rax, -2039117613
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or bl, -62
xor ax, -12492
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
xor al, -89
btc edi, 230
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
