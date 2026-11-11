.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, bx
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
or dil, bl
xor al, 34
or eax, 1725503461
or dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
or dl, 51
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 59
test al, -7
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
