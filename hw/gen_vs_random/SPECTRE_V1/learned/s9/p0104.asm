.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 44
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
add al, -65
sbb ecx, 49
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 94
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
