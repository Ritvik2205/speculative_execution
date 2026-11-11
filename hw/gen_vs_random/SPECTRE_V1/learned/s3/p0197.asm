.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
mov eax, edi
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
cmovnl rdx, rcx
or cl, 97
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
xchg edi, ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
xor di, dx
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
cmovb esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
