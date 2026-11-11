.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rax + rsi + 63]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
lea rdx, qword ptr [rax]
xor al, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
add cl, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
