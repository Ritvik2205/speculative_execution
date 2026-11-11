.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 13
and rbx, rax
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 77
and cl, 86
sub bl, dil
cmp dl, 119
not bx
lea dx, qword ptr [rax + rsi + 33]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 57
add bl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
