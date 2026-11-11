.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
test sil, 17
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 50
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
or al, dil
and al, dl
and ax, -122
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
jmp .bb_0.1
.bb_0.1:
test al, -81
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
xor cl, 55
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
xor al, cl
and eax, 561041355
xor cl, -13
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
