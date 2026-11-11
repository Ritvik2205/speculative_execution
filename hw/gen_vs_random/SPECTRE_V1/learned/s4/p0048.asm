.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub dil, bl
xor dl, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, -1128038253
seto al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
test bl, -8
lea rcx, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
