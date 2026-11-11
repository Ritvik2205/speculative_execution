.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test ecx, -1843375753
xor dl, bl
btc si, ax
xor dil, 124
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
not bl
and rax, 452940266
test rax, 337705873
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
