.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
bt si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
bt ebx, 7
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, cl
dec cl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
xchg ecx, esi
sub cl, 45
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
