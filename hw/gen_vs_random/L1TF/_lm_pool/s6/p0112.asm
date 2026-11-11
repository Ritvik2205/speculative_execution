.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
sbb al, cl
or dl, dl
jmp .bb_0.1
.bb_0.1:
add bl, 68
add dil, -7
jmp .bb_0.2
.bb_0.2:
test al, 15
lea edx, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
