.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test al, 127
or cl, -36
or rsi, 45
xor dl, 8
and sil, 89
xor dl, cl
xor bx, 10
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and edi, 23
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
