.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 87
and al, 75
xor cl, -13
xor ax, -12492
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and ax, cx
btc cx, 115
and cl, cl
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
xor cl, al
btr si, ax
or dil, dl
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
