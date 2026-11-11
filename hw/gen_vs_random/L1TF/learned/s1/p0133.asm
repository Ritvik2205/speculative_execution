.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, cl
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dl, dl
jmp .bb_0.3
.bb_0.3:
lea rdx, qword ptr [rsi + rcx + 54]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
cmovno rcx, rdx
add al, 117
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
adc al, -6
cmp al, 27
adc sil, 82
add al, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
