.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
or al, 54
or al, 30
test eax, -571234566
test eax, -1634766116
and cl, cl
test bl, dl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test edx, -372470678
bt si, ax
xor ax, -6793
and cl, dil
or al, sil
xor rax, -1499464454
xor al, 55
jmp .bb_0.1
.bb_0.1:
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
