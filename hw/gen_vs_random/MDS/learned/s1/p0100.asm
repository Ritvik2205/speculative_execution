.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and cl, 79
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or sil, -78
xor dl, 40
test rax, rsi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dil, dl
test al, 22
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and edx, -44
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
