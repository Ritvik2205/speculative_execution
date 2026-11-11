.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
lea cx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 21
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
