.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -124
and sil, sil
and al, 35
or al, sil
and cl, 79
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
bt bx, ax
xor al, dil
xor rcx, -2
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
