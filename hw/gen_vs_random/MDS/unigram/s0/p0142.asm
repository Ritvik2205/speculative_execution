.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 27
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
and dl, 120 # instrumentation
cmovnle cx, di
test ax, dx
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
cmovnp cx, dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
cmovp di, cx
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
bts esi, 82
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 10
btr rbx, 93
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 41
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
cmovns si, di
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
