.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 59
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
cmovnp dx, cx
and dl, -5 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
cmovnbe eax, edi
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
btc edx, 75
test bl, -9
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
cmovnbe rsi, rdi
or al, sil
test sil, 17
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
cmovl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
