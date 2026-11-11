.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
lea rsi, qword ptr [rbx + rcx + 98]
add edi, 97
cmp cl, sil
cmovnb rbx, rdx
cmovno ax, bx
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
jmp .bb_0.1
.bb_0.1:
or rsi, 51
test rax, rsi
inc cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 15
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
cbw
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
