.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
or rdx, -109
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
xor sil, -15
not dil
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
btc di, cx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
btc si, di
cmovbe ecx, ebx
and bl, 38 # instrumentation
cmovno rax, rdi
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
or ebx, ebx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and al, -15 # instrumentation
cmovnp ax, ax
test cx, 401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
