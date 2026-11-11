.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
test dl, cl
test sil, 17
or al, 54
test bl, bl
test al, cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or cl, 119
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or al, 25
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or sil, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
