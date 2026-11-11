.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
add cl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
movzx cx, sil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or eax, 1
or cl, al
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
mov al, sil
xor edx, 68
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
bt rax, rax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and bx, dx
cbw
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
