.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, ax
test al, bl
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or rax, 52
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or al, 30
and al, 49
and dil, dil
test dil, al
xor cl, bl
xor si, 91
jmp .bb_0.2
.bb_0.2:
xor sil, dl
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
