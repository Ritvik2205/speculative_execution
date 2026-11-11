.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
xor al, 55
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or dl, sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 79
or al, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor al, 9
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
