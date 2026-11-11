.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
add dl, al
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ecx
movzx bx, bl
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
jle .bb_0.1
jmp .exit_0
.bb_0.1:
adc eax, 1725322202
add bl, 70
bts dx, 207
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
sbb sil, -78
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
