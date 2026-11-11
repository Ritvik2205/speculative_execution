.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
sub dil, 95
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 17
jmp .bb_0.1
.bb_0.1:
add al, cl
lea dx, qword ptr [rcx + rbx + 61]
lea rbx, qword ptr [rsi + rsi]
mul dil
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 118
cmovo di, ax
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
add al, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
