.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -40 # instrumentation
cmovp edi, edi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
not sil
bt ax, dx
bt dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
cmovnz cx, si
cmovns rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
cmovnbe ecx, eax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
xor sil, 27
test dil, dil
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
