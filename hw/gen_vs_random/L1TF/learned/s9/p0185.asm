.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
add al, al
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 12
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
sbb dil, 38
btc dx, bx
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 58
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor rdx, 122
lea rax, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
