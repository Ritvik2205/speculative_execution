.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
cmovp edx, edx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 54
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
jmp .bb_0.1
.bb_0.1:
btc rax, rsi
or sil, -78
test dx, 16353
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
cmovnp bx, di
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 13
cmovnb rsi, rdi
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 100
cmovz ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
