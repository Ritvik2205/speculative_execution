.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -83 # instrumentation
cmovnp rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or bl, 127
or bl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and bx, 23
or rsi, rcx
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
test dl, -95
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
