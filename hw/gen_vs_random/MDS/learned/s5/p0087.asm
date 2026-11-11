.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and cl, -71
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
xor sil, cl
or ax, -14271
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 79
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
not cl
xor cl, -13
and eax, 561041355
bt si, ax
bt si, di
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
