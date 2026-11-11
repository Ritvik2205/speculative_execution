.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and sil, dl
movzx dx, dil
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sbb al, 43
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 13
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
cmovnbe di, cx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
