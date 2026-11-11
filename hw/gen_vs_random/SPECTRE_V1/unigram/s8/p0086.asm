.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx + rsi + 91]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
or dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and sil, 52
and rbx, 22
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
imul cx
sub bl, dil
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
sub al, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
add rbx, 74
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
