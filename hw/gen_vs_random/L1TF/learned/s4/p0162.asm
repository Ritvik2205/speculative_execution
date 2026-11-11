.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
or al, -57
mov al, sil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
add al, -80
jmp .bb_0.3
.bb_0.3:
test sil, 29
bt rsi, 48
sbb al, -50
test rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
