.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
sbb ecx, 87
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 8
jmp .bb_0.1
.bb_0.1:
test sil, -31
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
