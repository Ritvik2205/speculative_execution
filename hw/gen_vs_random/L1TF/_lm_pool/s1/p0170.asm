.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
lea rax, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -32
xor al, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
adc sil, 18
jmp .bb_0.2
.bb_0.2:
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
