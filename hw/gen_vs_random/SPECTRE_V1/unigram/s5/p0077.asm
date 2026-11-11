.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
lea si, qword ptr [rbx + rbx + 19]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
add bl, 70
adc cl, -81
cmovz ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
lea edi, qword ptr [rsi + rsi]
neg bx
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
