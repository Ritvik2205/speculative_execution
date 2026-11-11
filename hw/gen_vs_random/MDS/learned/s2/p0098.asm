.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
and eax, 33
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
xor al, cl
test edx, -1561252782
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test al, -81
or dl, -8
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
