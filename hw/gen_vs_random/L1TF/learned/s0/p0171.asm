.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1495028166
jmp .bb_0.1
.bb_0.1:
add bl, 68
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
test al, -84
lea edx, qword ptr [rdi]
and dl, bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 84
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
