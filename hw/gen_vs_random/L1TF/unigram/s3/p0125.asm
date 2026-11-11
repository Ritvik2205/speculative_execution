.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 68
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
or edx, eax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
add cl, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
or cl, 89
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
xor cl, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and al, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
