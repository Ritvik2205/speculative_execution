.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
bts rdi, rsi
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
bts rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
bts ecx, 184
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 76
bt rdi, rdi
and dil, -103 # instrumentation
cmovns edi, edi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
