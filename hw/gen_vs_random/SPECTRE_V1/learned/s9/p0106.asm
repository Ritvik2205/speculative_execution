.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
add rsi, -60
not ecx
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
add bl, -95
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
mov dl, 58
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
