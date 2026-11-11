.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rcx, rbx
or cl, bl
and al, -68
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
test sil, 29
neg dil
test di, 25
jmp .bb_0.3
.bb_0.3:
lea rdx, qword ptr [rcx + rdi + 17]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
