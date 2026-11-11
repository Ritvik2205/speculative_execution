.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
test al, 91
and bl, dl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 62
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
test al, cl
jmp .bb_0.1
.bb_0.1:
and dl, dl
test dil, sil
or al, 24
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
bt cx, ax
or dl, dl
btr rax, 56
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or al, -75
xor cl, dl
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
