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
add bl, -41 # instrumentation
xchg dl, al
xor cl, cl
sub dl, al
imul cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
sub rax, -679751639
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
