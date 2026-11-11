.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmp esi, ecx
and rsi, rax
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
lea cx, qword ptr [rsi + rbx + 92]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
add bx, -65
lea rax, qword ptr [rcx + rcx + 48]
xor rdx, rax
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
