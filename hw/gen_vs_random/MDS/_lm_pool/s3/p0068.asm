.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or cl, bl
xor al, 34
xor rcx, 71
or al, 30
or cx, 49
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and cl, -6
xor eax, 1640090871
bt cx, ax
and ecx, -104
and ax, 19224
or dl, 85
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
