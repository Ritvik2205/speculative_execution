.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
test al, -70
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor dl, 19
jmp .bb_0.1
.bb_0.1:
test al, -82
not bl
lea rsi, qword ptr [rcx + rsi + 98]
jmp .bb_0.2
.bb_0.2:
test al, -104
adc sil, 96
sbb al, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
