.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
xor sil, -126
btc di, 164
xor sil, -46
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 32
or rdx, -48
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
test eax, -571234566
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
