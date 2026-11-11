.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rsi
lea rdx, qword ptr [rcx + rbx]
test ax, ax
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
mov sil, sil
lea edx, qword ptr [rcx + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
cmovnz rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
movzx esi, dil
imul cx, bx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
cbw
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
