.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
lea si, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
adc sil, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
sbb dl, cl
jmp .bb_0.4
.bb_0.4:
add cl, -20
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
