.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
lea rdi, qword ptr [rbx + rax + 41]
test sil, dil
cmp rbx, rsi
add bl, 68
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
cmp ax, -4865
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
mov sil, 39
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
imul al
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
lea di, qword ptr [rcx + rbx + 19]
imul rcx, rdi, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
