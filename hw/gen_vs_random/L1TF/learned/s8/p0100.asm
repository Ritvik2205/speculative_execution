.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, bx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
test eax, 645518295
and al, -68
and dil, -22
jmp .bb_0.1
.bb_0.1:
test sil, 29
and rcx, 44
lea rax, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
