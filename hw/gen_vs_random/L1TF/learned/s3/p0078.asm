.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
test dil, -126
xor sil, 64
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test al, -82
add dil, cl
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test al, 15
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
