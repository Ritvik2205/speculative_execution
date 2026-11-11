.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 47
test eax, 158941032
and rdi, 9
or cl, cl
xor rsi, -117
test dil, 46
xor dl, bl
or al, -24
test eax, 298249463
bt bx, ax
or al, 24
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
bt si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
