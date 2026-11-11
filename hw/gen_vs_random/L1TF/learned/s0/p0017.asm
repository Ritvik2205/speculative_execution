.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -104
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
xor sil, bl
xor dil, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rcx]
jmp .bb_0.3
.bb_0.3:
add cl, bl
lea rsi, qword ptr [rax + rcx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
