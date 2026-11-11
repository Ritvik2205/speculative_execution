.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
not sil
test dl, 9
btr rsi, 146
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and cl, sil
or rdx, -48
cmovle si, dx
or al, cl
test dil, al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
