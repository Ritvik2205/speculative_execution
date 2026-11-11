.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
test dil, -51
test ax, 4430
or al, -22
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
test al, -81
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
test dl, 9
xor rcx, -2
cmovle ax, dx
and si, -121
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
