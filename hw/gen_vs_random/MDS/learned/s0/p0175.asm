.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
test dl, 9
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and ax, 31082
and dx, 3
xor sil, -15
and al, dil
jmp .bb_0.2
.bb_0.2:
xor eax, -885380838
xor bl, cl
jmp .bb_0.3
.bb_0.3:
test sil, bl
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
