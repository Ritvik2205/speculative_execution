.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
cwde
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and dl, bl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rsi]
test bl, 12
jmp .bb_0.2
.bb_0.2:
test al, -70
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
test dl, -37
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
