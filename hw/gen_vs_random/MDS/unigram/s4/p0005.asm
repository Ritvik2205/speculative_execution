.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 30884
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 11
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 53
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and cl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
test dil, -67
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and al, -3 # instrumentation
cmovnb ax, si
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
cmovp edi, ecx
or cl, 10
bt ecx, 48
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
