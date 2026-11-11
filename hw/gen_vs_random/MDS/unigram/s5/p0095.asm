.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
btr eax, 51
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
or esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
cmovp dx, di
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and bl, 65 # instrumentation
cmovnbe dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 59
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
test cl, 91
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
