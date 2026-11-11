.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
not dil
xor al, -19
and dil, bl
and al, cl
and cl, -71
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor rax, -1499464454
or rdx, -48
and eax, 461212071
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test esi, 425331143
and ax, -4410
xor sil, 110
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
bt bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
