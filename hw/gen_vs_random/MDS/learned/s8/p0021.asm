.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
or rdx, -109
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or al, 24
test al, 22
test edi, -1252846009
xor dl, -43
test cl, dil
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, 22
and cx, -2
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
bt ax, cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
