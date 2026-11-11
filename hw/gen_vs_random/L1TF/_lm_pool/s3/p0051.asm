.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea si, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
btc si, ax
jmp .bb_0.1
.bb_0.1:
test rcx, rsi
sbb al, dil
or cl, -78
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
adc ax, 91
lea eax, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
