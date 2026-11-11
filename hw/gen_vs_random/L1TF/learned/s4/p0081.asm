.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
test di, 76
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 35
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
