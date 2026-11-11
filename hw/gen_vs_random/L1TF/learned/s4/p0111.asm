.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 77
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
test ax, 13284
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
lea edi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
neg sil
and edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
