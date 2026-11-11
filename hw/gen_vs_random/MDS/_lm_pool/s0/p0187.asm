.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -1005
btr ecx, eax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 44
or cl, dil
btr cx, si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test rsi, 58
test al, -81
or dl, -97
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
