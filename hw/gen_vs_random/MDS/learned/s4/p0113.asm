.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, dx
btr edx, ecx
or al, dl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and sil, 89
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
jmp .bb_0.1
.bb_0.1:
or al, 24
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
bt bx, si
test cl, -18
or ax, -6817
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
