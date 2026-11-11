.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
sub ax, 7297
dec ebx
cmovbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
sub cl, -49
add al, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 35
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 41
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
cmovnle si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
