.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
or al, bl
xor al, bl
xor sil, al
jmp .bb_0.1
.bb_0.1:
cwde
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
sbb al, -4
xor bl, 38
mov dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
