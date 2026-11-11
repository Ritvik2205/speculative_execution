.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 89
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
or rdi, 69
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
xor dx, bx
test ecx, eax
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 59
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
xor bl, cl
movzx ecx, bl
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
