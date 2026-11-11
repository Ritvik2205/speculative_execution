.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
not al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 45
and cl, dil
or sil, cl
test rcx, rdi
or al, -22
test al, -7
xor al, sil
test sil, dl
xor bl, -88
bt ax, cx
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
