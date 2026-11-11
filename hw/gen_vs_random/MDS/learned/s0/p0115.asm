.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
xor al, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
cmovno rax, rbx
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and dil, dl
or al, -17
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
