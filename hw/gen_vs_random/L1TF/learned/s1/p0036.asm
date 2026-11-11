.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
xor rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 30
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
mov dil, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or bl, 61
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 51
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 53
or rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
sbb rax, 717206440
adc bl, 87
add dl, cl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
