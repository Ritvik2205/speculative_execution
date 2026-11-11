.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add al, -47
sbb cl, al
sub sil, cl
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
mov al, sil
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 16
lea rdx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
