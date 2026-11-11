.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor dl, dil
jmp .bb_0.2
.bb_0.2:
or al, -57
add dil, 88
jmp .bb_0.3
.bb_0.3:
setno dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
