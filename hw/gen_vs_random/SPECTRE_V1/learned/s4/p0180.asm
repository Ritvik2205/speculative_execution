.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
test al, 40
and al, cl
lea bx, qword ptr [rdx + rdi + 22131]
or dil, al
dec dil
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
