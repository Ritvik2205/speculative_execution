.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rsi, rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor ax, 32760
mov dil, cl
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
or cl, 105
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
jmp .bb_0.1
.bb_0.1:
lea ebx, qword ptr [rsi + rdx]
add al, -49 # instrumentation
adc al, dil
sbb sil, 19
lea ebx, qword ptr [rcx + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
movsx rbx, dil
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
seto dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
