.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 96
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
btr rdx, 34
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
xor ebx, 63
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 57
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov rbx, rdi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
setz al
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ebx
bts dx, dx
add bl, 73 # instrumentation
mov rax, 2
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
sbb eax, 1392087754
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
