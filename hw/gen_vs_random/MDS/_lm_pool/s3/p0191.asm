.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
add dil, 85
or cl, 119
or dl, 51
or cl, dil
test dl, 9
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and eax, 366961170
bt di, si
or si, -12
jmp .bb_0.1
.bb_0.1:
bt rdx, 33
test cl, dil
test al, -7
btr cx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
