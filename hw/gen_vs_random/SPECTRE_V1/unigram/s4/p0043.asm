.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
add dl, -6 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
or dil, sil
sbb cl, -122
add dl, 63 # instrumentation
cmovle dx, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 51
xor cx, 28
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
xor eax, -764881786
mov sil, sil
mov si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
