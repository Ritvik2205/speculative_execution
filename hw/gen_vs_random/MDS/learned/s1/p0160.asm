.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
btr bx, si
test sil, dil
jmp .bb_0.1
.bb_0.1:
test dl, sil
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
or dl, dl
not dil
jmp .bb_0.2
.bb_0.2:
xor dil, 124
cmovnp rsi, rcx
and rax, 79
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
