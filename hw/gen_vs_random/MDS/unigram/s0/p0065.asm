.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -68
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 81
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
bts rax, 117
cmovnle rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 94
test dil, -72
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 69
and al, -105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
cmovle eax, edx
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
and cl, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
bt rdi, rdi
or al, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
