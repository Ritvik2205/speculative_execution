.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovbe rax, rax
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and cl, -23 # instrumentation
cmovno esi, ebx
btc esi, edi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
or cl, 7
and edi, 23
and ecx, -104
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and al, dil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 91
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and di, 91
xor sil, -46
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
