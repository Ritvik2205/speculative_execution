.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 27
sets cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 58
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
lea rdx, qword ptr [rbx + rdi]
lea rdx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
dec rbx
and rsi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rsi]
sbb cl, -122
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 74
imul rsi, rcx
test ecx, -1134698714
xor sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
