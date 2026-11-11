.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
test cl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
xor rbx, 89
jmp .bb_0.1
.bb_0.1:
and rax, 1886208862
btc rax, 110
test sil, -96
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
