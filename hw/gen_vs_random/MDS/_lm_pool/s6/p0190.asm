.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
not al
test dl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, 25
xor dl, 34
jmp .bb_0.1
.bb_0.1:
or cl, cl
and sil, cl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.2
.bb_0.2:
test al, cl
and di, 99
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
or rdx, -109
xor ax, 23633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
