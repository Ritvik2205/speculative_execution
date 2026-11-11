.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
add al, -9 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 4
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
add bl, -103 # instrumentation
cmovnz bx, dx
test cl, 83
sbb sil, 19
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 12
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
sub cl, -49
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 11
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
