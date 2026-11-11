.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
test al, 15
lea rsi, qword ptr [rcx + rdi + 93]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
test cl, 77
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
or rsi, 47
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
cmp al, cl
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
