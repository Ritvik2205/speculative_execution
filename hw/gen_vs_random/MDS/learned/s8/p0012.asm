.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor sil, -15
xor ecx, 8
and al, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
xor sil, -15
jmp .bb_0.2
.bb_0.2:
xor cl, -13
and cl, al
xor cx, -18
test dl, cl
bt bx, cx
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
