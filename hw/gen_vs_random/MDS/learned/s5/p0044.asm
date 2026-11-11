.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or dl, -21
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 78
and dil, 125
and rcx, -63
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
btr dx, cx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and ax, -12519
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
lea rax, qword ptr [rsi]
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
