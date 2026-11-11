.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 67
xor cl, al
and al, 75
not dil
and rax, 1250429750
and sil, -9
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or al, -22
test cl, dl
test dil, -51
or rax, 1461812833
jmp .bb_0.1
.bb_0.1:
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
