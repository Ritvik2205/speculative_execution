.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap eax
lea rax, qword ptr [rdx + rax + 25]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
lea edi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
lea edx, qword ptr [rcx + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
inc dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
test dil, -116
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
inc bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
