.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dl
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
sbb al, -4
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rax + rdi + 22]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 70
and dl, 32
adc cl, -34
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and ecx, 4
xchg rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
