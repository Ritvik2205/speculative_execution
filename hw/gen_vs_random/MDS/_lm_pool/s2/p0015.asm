.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
xor rcx, 71
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
or al, -17
or al, -78
xor ax, -1005
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, 106
or al, -78
or bl, 127
or rcx, -17
and ebx, 63
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and cx, -8
test dx, 16353
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
