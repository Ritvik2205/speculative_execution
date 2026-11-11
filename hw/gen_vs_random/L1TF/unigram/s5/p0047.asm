.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
setb bl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
cmovnp rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
lea ax, qword ptr [rbx + rax + 59]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rax + rcx]
cmp al, 27
sbb al, bl
add al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
cmovnbe rcx, rdi
bswap rbx
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
sub rbx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
