.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and al, -103
test dil, sil
jmp .bb_0.1
.bb_0.1:
xor cl, -13
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or bl, 100
xor al, bl
jmp .bb_0.2
.bb_0.2:
or cl, bl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
