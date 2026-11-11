.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and sil, -69
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
test dil, -80
and dl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
test ecx, -1843375753
and rdi, rbx
cmovbe esi, esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
bt ax, 76
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
cmovb rcx, rdx
and dil, dil
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
