.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
xchg rsi, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
add dl, -7 # instrumentation
cwd
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
or rdi, rbx
inc sil
imul si, ax, 91
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
lea edi, qword ptr [rsi + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
test dil, -126
sbb ecx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
