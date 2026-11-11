.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 91
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
or dil, -71
or rax, 1461812833
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
not bl
xor rdi, -9
test bl, dl
or dil, dl
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
