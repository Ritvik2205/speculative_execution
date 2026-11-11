.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and dil, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.1
.bb_0.1:
test al, 91
and dl, dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and cl, -111
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
btc cx, dx
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
