.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, -109
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
setnbe dl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
add cl, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xor cl, 89
btc bx, bx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
add bl, 10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 86
lea ebx, qword ptr [rax + rsi + 65]
movsx eax, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
