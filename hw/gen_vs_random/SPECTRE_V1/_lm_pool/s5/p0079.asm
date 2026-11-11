.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
xor bl, dl
sub al, -66
and cl, bl
cmp dl, 119
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 87
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
