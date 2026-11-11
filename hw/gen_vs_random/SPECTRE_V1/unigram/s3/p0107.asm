.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
imul al
add dil, 32 # instrumentation
sbb al, dil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
or bl, sil
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg dil, sil
lea ax, qword ptr [rdx + rcx + 37]
lea di, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
